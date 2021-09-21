#!/bin/sh

echo "#########################################"
echo "# SSH                                   #"
echo "#########################################"
# when connecting to this SSH server and the client has the related
# private key in it's .ssh folder, this is used, fallback is password

service ssh start
service ssh stop

# please start or enable service when needed

mkdir ~/.ssh
chmod 700 ~/.ssh

# add BK public key
cat > ~/.ssh/authorized_keys << EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCgKVKGVQyej/dqJEOeoKLIhN06QuQPzTsh58b3pNs+qzhXRPkZTtxnpV4IFR4uMfAcTX7fktMYEF1pJKq1KkxYr03FMs0brffm4yB5OEYSIu4h56ukhTFThJtYy11Ve/p3EKwuBHPVfL1sCyaAH0KptPaskypxVYYgPuc92609h9a+bWt6/LembEwmPTy9Aav0KdAVpSSAd4abEhMLbVFUn4Tv8Qp0+3X68KhIlI2bPTwOjG6SzzuIzSsyw6jAZiBIeOCPY/5tbPtwbG3frpPTRzSnFaQ+DRcfqtNdIfflI+L0OVfmM9rIvKeBA8WCZMiEmKamCxqU1RmDmTYJ4RhefAIU0IRoYsEOf7SmdI5LsNAtPlWgKDFvl0wK0sZ/RsH1YAbZNIObr33pyszVTFux219i0SLGC+IAb9X0XZjlxdU/cYbuqQ5CxS1EHYmbsB9W+mbeUkeLFbiXs6XeP+fs/58R5aZk7FcDbTvEg2LycSDKq5L3whHf3asonlyVYjEvoRunLsLDFZCYSYXExRivGJbhp9MEUob7w5vY8pLBxAs1iqGVio+6X/IUDW+3XIa9rydt3HTZlXVPYM/gDyVQwlztB7E1UfiSpIZ4q3YdQq/Ek3yOB+mLg7nNYrcu5wgMd3IeLEWn1FbZwL7m8nkrquxU7XRXL+iZJGjdm7lB9Q== bk@bkedv.de
EOF

chmod 600 ~/.ssh/authorized_keys