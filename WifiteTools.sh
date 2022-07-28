#!/bin/sh

echo "#########################################"
echo "# Wifite Addons                         #"
echo "#########################################"

# see https://github.com/JPaulMora/Pyrit/wiki
echo "Installing wifite tools"
sudo apt install hcxdumptool hcxtools python3-pip cowpatty -y

sudo pip install psycopg2
sudo pip install scapy

sudo apt install python2-dev libssl-dev libpcap-dev -y

git clone https://github.com/JPaulMora/Pyrit.git
cd Pyrit
python2 setup.py clean
python2 setup.py build  
sudo python2 setup.py install
#cleanup
cd ..
rm Pyrit -rf