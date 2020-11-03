#!/bin/sh

touch muondetector.gpg
wget -qO - https://archive.muonpi.org/muondetector.public.key | gpg --no-default-keyring --keyring ./muondetector.gpg --import -
mv muondetector.gpg /etc/apt/trusted.gpg.d/

echo deb https://archive.muonpi.org/raspbian buster main > /etc/apt/sources.list.d/muondetector.list

apt update
