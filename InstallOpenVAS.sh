#!/bin/sh

sudo apt update
sudo apt install openvas -y

echo
echo setting up OpenVAS...
sudo gvm-setup

#[*] Please note the generated admin password
#[*] User created with password '34828331-7a34-4aee-a546-75c8c7ee8569'.

