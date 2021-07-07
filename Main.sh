#!/bin/sh

# set keyboard layout to 'de'
cp keyboard-layout.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml

#setup auto login
sudo ./AutoLogin.sh

# no password for sudo
./SudoNoPassword.sh

# change password
passwd

# set Timezone
./SetTimeZone.sh

# Visual Studio Code
./InstallVSCode.sh

# Update Kali
./SystemUpgrade.sh

# Install some apps
./InstallApps.sh

# install openvas
./InstallOpenVAS.sh