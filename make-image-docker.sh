#!/bin/sh

whichconfig=config-lite

if [ $# -gt 0 ]; then
    if [ $1 = "gui" ]; then
        whichconfig=config-gui
    fi
fi

echo "using config $whichconfig"

echo "Trying to start binfmt-support service..."
sudo systemctl start binfmt-support.service

if [ $? -gt 0 ]; then
    echo "Please make sure you have binfmt-support installed on your system." 
    exit 1
fi

if [ -e pi-gen ]; then
    rm -rf pi-gen
fi

git clone https://github.com/RPi-Distro/pi-gen.git

cp -r stage-muondetector-lite pi-gen
cp -r stage-muondetector-gui pi-gen
cp config-lite pi-gen
cp config-gui pi-gen

cd pi-gen

./build-docker.sh -c $whichconfig

cd ..

cp pi-gen/deploy/ -R .
