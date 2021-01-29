#!/bin/bash

echo "Welcome to your muondetector."
echo "For this first setup, please set a new password for the pi user:"

sudo passwd pi

echo "Now enter your mqtt credentials for the muonpi network:"

muondetector-login

echo "Starting muondetector-daemon services..."

sudo systemctl enable muondetector-daemon
sudo systemctl start muondetector-daemon

echo "You are all setup!"

rm /home/pi/.bash_profile
