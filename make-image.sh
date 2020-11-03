#!/bin/sh

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

cp -r stage-muondetector pi-gen
cp config pi-gen

cd pi-gen

./build-docker.sh -c config

docker rm -v pigen_work

cd ..

mv pi-gen/deploy .

rm -rf pi-gen
