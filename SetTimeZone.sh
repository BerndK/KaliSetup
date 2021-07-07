#!/bin/sh

echo "#########################################"
echo "# Set Timezone                          #"
echo "#########################################"


sudo rm /etc/localtime
sudo ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime