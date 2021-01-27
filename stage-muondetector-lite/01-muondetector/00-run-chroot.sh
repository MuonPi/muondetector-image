#!/bin/sh

wget -qO - https://archive.muonpi.org/muondetector.public.key | sudo apt-key add -

echo "deb https://archive.muonpi.org/raspbian buster main" > /etc/apt/sources.list.d/muondetector.list

apt update
