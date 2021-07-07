#!/bin/sh

echo "#########################################"
echo "# OpenVAS                               #"
echo "#########################################"

sudo apt update
sudo apt install openvas -y

echo
echo "to setup OpenVAS type 'sudo gvm-setup'"
echo "please note password"
echo "or use 'gvmd --user=admin --new-password=mypasswd'"
echo "this will take 30min"
# sudo gvm-setup

#[*] Please note the generated admin password
#[*] User created with password '34828331-7a34-4aee-a546-75c8c7ee8569'.

