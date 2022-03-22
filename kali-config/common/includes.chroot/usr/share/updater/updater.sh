#!/usr/bin/env bash

cd $HOME

wget -O updater-current.sh https://raw.githubusercontent.com/tracelabs/Trace-Labs-VM-M1-Mac-Build/main/updater-current.sh

chmod +x updater-current.sh

sudo $HOME/updater-current.sh

wget -O bookmarks.html https://raw.githubusercontent.com/tracelabs/Trace-Labs-VM-M1-Mac-Build/main/bookmarks.html

rm -f updater-current.sh


############################