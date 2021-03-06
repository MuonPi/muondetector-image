#!/bin/sh

whichconfig=config-lite

if [ $# -gt 0 ]; then
    if [ $1 = "gui" ]; then
        whichconfig=config-gui
    fi
fi

echo "using config $whichconfig"

if [ -e pi-gen ]; then
    rm -rf pi-gen
fi

git clone https://github.com/RPi-Distro/pi-gen.git

cp -r stage-muondetector-lite pi-gen
cp -r stage-muondetector-gui pi-gen
cp config-lite pi-gen
cp config-gui pi-gen

cd pi-gen

./build.sh -c $whichconfig

cd ..

cp pi-gen/deploy/ -R .
