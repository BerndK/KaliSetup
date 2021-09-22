#!/bin/sh

echo "#########################################"
echo "# Installing Apps...                    #"
echo "#########################################"


# installs applications:
# searchmonkey      - searchtool
# bleachbit         - cleanup tool
# duc               - disk usage tool (sudo duc index && sudo duc gui)
# ksysguard         - Taskmanager
# armitage          - metasploit GUI
# hardinfo          - Hardware Information Tool
# kali-tools-802-11 - Kali WiFi Tools
# tilix             - Multi terminal
# docker-compose    - for docker containers
# xarchiver         - GUI to handle archives
# johnny            - GUI to crack passwords
sudo apt update
sudo apt install searchmonkey bleachbit duc ksysguard armitage hardinfo kali-tools-802-11 tilix docker-compose xarchiver johnny -y

# Remove invalid exploit (to not break armitage):
sudo mv /usr/share/metasploit-framework/modules/exploits/linux/misc/saltstack_salt_unauth_rce.rb /usr/share/metasploit-framework/modules/exploits/linux/misc/saltstack_salt_unauth_rce.rb.bkp

# open cl for hashcat
# not tested yet, hascat seems to not work in VM
# sudo apt install libhwloc-dev ocl-icd-dev ocl-icd-opencl-dev
# sudo apt install pocl-opencl-icd