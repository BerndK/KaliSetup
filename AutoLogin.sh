# set values for AutoLogin user kali
# run as root (use sudo)
./SetValue.sh "/usr/share/lightdm/lightdm.conf.d/01_debian.conf" autologin-user kali
./SetValue.sh "/usr/share/lightdm/lightdm.conf.d/01_debian.conf" autologin-user-timeout 2

groupadd -r autologin
gpasswd -a kali autologin