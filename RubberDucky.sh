#!/bin/sh

echo "#########################################"
echo "# Rubber Ducky                          #"
echo "#########################################"

mkdir ~/RubberDucky
wget -O ~/RubberDucky/duckencoder.jar https://github.com/hak5darren/USB-Rubber-Ducky/blob/master/duckencoder.jar?raw=true

# create template
cat > ~/RubberDucky/exploit.txt << EOF
DELAY 3500
GUI R
DELAY 400
STRING notepad
ENTER
DELAY 500
DEFAULTDELAY 5000
STRING .
STRING .
STRING .
EOF

# create script
cat > ~/RubberDucky/encodeToSSD.sh << EOF
java -jar duckencoder.jar -i exploit.txt -o /media/kali/RUBBERDUCKY/inject.bin
EOF

chmod +x ~/RubberDucky/encodeToSSD.sh

# create Readme
cat > ~/RubberDucky/readme << EOF
see https://github.com/hak5darren/USB-Rubber-Ducky/wiki/Duckyscript
EOF