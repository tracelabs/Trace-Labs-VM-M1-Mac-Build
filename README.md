# Trace Labs OSINT VM - Apple Silicon 

## Overview
The repository includes a recipe file to build an OSINT focused VM that runs on Apple Silicon. This is based on the great work done on the Kali Linux live-build-config (https://gitlab.com/kalilinux/build-scripts/live-build-config/-/tree/master).

## Download
You can download the latest M1 compatible ISO at: https://tracelabs.org/osint-vm

![image](https://user-images.githubusercontent.com/23207476/99865509-235c4500-2bfa-11eb-89fe-70d6685e1454.png)


## Installing from ISO
You will need to select "Advanced Install Options" from the main menu then "Text Installer" then "Install" 

## Building the ISO on your machine

### Setup
This build will need to be done on a machine with an Apple chip (M1,M2,M3). You will need to have Docker installed and running on your machine as well. This step is not necessary. You can just download the ISO file directly if you would like.  
```
git clone https://github.com/tracelabs/Trace-Labs-VM-M1-Mac-Build.git
cd Trace-Labs-VM-M1-Build
./build-in-container.sh
```
If the build process is successful, a .iso file will be created in the `images` directory. The .iso file can be used for live boot or to install as a virtual machine using the hypervisor of your choice. 

## Applications

The majority of OSINT tools no longer come pre-packaged with the VM. There is an option to download them via a script on the desktop though. This keeps the size of the release small enough to build and host on Github. If you want to install the tools in the script then: 
- Open a terminal
- Navigate to the `Desktop` folder
- Execute the install script with `./install-tools.sh`

**Obsidian**
- Note taking app Obsidian comes bundled with the VM. There is an icon on the desktop to launch Obisidian or you can run the appimage located in the home directory. We've already set up a vault for you called "TL Vault" that lives on the Desktop. The first time you run Obsidian open that vault folder. The default theme is the Trace Labs theme. 

**Resources**
* [Trace Labs OSINT Field Manual](https://github.com/tracelabs/tofm/blob/main/tofm.md)
* [Trace Labs CTF Contestant Guide](https://download2.tracelabs.org/Trace-Labs-OSINT-Search-Party-CTF-Contestant-Guide_v1.pdf)

**Note Taking**
* [Obsidian](https://obsidian.md)
* [TJ Null's OSINT Joplin template](https://github.com/tjnull/TJ-OSINT-Notebook)

**Browsers**
* [Firefox ESR](https://www.mozilla.org/en-US/firefox/enterprise/)


**Data Analysis**
* [DumpsterDiver](https://github.com/securing/DumpsterDiver)
* [Exifprobe](https://github.com/hfiguiere/exifprobe)
* [Stegosuite](https://github.com/osde8info/stegosuite)

**Domains**
* [Domainfy (OSRFramework)](https://github.com/i3visio/osrframework)
* [Sublist3r](https://github.com/aboul3la/Sublist3r)

**Downloaders**
* [Browse Mirrored Websites](http://www.httrack.com/)
* [Metagoofil](https://github.com/opsdisk/metagoofil)
* [WebHTTrack Website Copier](http://www.httrack.com/)
* [Youtube-DL](https://github.com/ytdl-org/youtube-dl)

**Email**
* [Checkfy (OSRFramework)](https://github.com/i3visio/osrframework)
* [Infoga](https://github.com/m4ll0k/Infoga)
* [Mailfy (OSRFramework)](https://github.com/i3visio/osrframework)
* [theHarvester](https://github.com/laramies/theHarvester)
* [h8mail](https://github.com/khast3x/h8mail)

**Frameworks**
* [Little Brother](https://github.com/lulz3xploit/LittleBrother) (Archived)
* [OSRFramework](https://github.com/i3visio/osrframework)
* [sn0int](https://github.com/kpcyrd/sn0int)
* [Spiderfoot](https://github.com/smicallef/spiderfoot)
* [Maltego](https://www.maltego.com/downloads/)
* [OnionSearch](https://github.com/megadose/OnionSearch)

**Phone Numbers**
* [Phonefy (OSRFramework)](https://github.com/i3visio/osrframework)
* [PhoneInfoga](https://github.com/sundowndev/phoneinfoga)

**Social Media**
* [Instaloader](https://github.com/instaloader/instaloader)
* [Twint](https://github.com/twintproject/twint) (Archived)
* [Searchfy (OSRFramework)](https://github.com/i3visio/osrframework)
* [Tiktok Scraper](https://github.com/drawrowfly/tiktok-scraper)
* [Twayback](https://github.com/humandecoded/twayback)
* [Stweet](https://github.com/markowanga/stweet)

**Usernames**
* [Alias Generator (OSRFramework)](https://github.com/i3visio/osrframework)
* [Usufy (OSRFramework)](https://github.com/i3visio/osrframework)

**Other Tools**
* [Photon](https://github.com/s0md3v/Photon)
* [Sherlock](https://github.com/sherlock-project/sherlock)
* [Shodan](https://cli.shodan.io/)
* [Joplin](https://joplinapp.org/help/)

## Configuration Settings
**Firefox**
* Delete cookies/history on shutdown
* Block geo tracking
* Block mic/camera detection
* Block Firefox tracking
* Preload OSINT Bookmarks

## Contributing
Are you interested in the VM development? Join us on [Discord](https://discord.com/invite/tracelabs) in #osint-vm channel.

PRs are welcome. We ask that you PR in to the Dev branch.
