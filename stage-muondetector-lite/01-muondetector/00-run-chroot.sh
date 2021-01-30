#!/bin/sh

curl https://archive.muonpi.org/muondetector.public.key | gpg --dearmor > /etc/apt/trusted.gpg.d/muondetector.gpg

echo "deb https://archive.muonpi.org/raspbian buster main" > /etc/apt/sources.list.d/muondetector.list

apt update
