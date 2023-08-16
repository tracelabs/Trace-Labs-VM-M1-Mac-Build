# Trace Labs Kali Linux build configuration 

## Overview
The repository includes a recipe file to build a Linux OSINT Distribution for Trace Labs based on the Kali Linux live-build-config (https://gitlab.com/kalilinux/build-scripts/live-build-config/-/tree/master).

![image](https://user-images.githubusercontent.com/23207476/99865509-235c4500-2bfa-11eb-89fe-70d6685e1454.png)

The following changes have been made to the default Kali git repo:
* Creation of a folder for Tracelabs under the `kali-config/variant-tracelabs/package-lists/kali-list.chroot` path. The `kali-list.chroot` can be modified to add additional packages or remove pre-configured packages that are required as part of the build process. 
* Creation of the `kali-config/common/hooks/normal/osint-packages.chroot` file to include the installation steps for all the git repositories that have been included in the build, and do not already have a package. The `osint-packages.chroot` file can be modified to add additional git repositories or remove pre-configured git repositories that are required as part of the build process. Please add any pre-requisite packages to the `kali-live/kali-config/variant-tracelabs/package-lists/kali-list.chroot` file. 
* Creation of the following folders under the directory `kali-config/common/includes.chroot/usr/share/` 
    * `applications`: linked to the menu for applications
    * `backgrounds`: default Tracelabs background
    * `desktop-directories`: desktop directories with tools
    * `firefox-esr/distribution`: default Firefox policy
## Installing from ISO
You will need to select "Advanced Install Options" from the main menu then "Text Installer" then "Install" 

## Building the ISO file on your Debian host or Debian VM

### Setup
This build will need to be done in an existing Kali VM on a M1 Mac host.  
```
git clone https://github.com/tracelabs/Trace-Labs-VM-M1-Mac-Build.git
cd Trace-Labs-VM-M1-Build
sudo ./build_tracelabsiso_recipe.sh
```
If the build process is successful, a .iso file will be created in the `/opt` directory. The .iso file can be used for live boot or to install the Virtual Machine. The .iso file can also be converted to a .ova file using the `ovftool` as outlined in the "Converting to an OVA" page (https://www.kali.org/docs/virtualization/converting-to-ova/).


https://www.tracelabs.org/initiatives/osint-vm

