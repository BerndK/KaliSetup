#!/bin/sh

# installs applications:
# searchmonkey      - searchtool
# bleachbit         - cleanup tool
# duc               - disk usage tool (sudo duc index && sudo duc gui)
# ksysguard         - Taskmanager
# armitage          - metasploit GUI
# hardinfo          - Hardware Information Tool
# kali-tools-802-11 - Kali WiFi Tools
sudo apt update
sudo apt install searchmonkey bleachbit duc ksysguard armitage hardinfo kali-tools-802-11 -y

# Remove invalid exploit (to not break armitage):
sudo mv /usr/share/metasploit-framework/modules/exploits/linux/misc/saltstack_salt_unauth_rce.rb /usr/share/metasploit-framework/modules/exploits/linux/misc/saltstack_salt_unauth_rce.rb.bkp