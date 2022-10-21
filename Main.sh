#!/bin/sh

# set keyboard layout to 'de'
cp keyboard-layout.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml
# also set for current session
setxkbmap de

#setup auto login
sudo ./AutoLogin.sh

# no password for sudo
./SudoNoPassword.sh

# change password
# passwd

# set Timezone
./SetTimeZone.sh

# Visual Studio Code
./InstallVSCode.sh

# Update Kali
#./SystemUpgrade.sh

# Install some apps
./InstallApps.sh

# Wifite addons
./WifiteTools.sh

# install openvas
#./InstallOpenVAS.sh

# Mount Shared Folders
# use 'mount-shared-folders'
./SharedFolders.sh

# RubberDucky
#./RubberDucky.sh

# SSH
./SSH.sh

# Screen resulutions
#./AddResolutions
#cp ./AddResolutions ~/Desktop
#cp ./AddResolutions.desktop ~/.config/autostart/
