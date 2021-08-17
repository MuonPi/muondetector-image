#!/bin/bash -e

echo "Welcome to your muondetector."
echo "For this first setup, please set a new password for the pi user:"

sudo passwd pi

echo "Starting and stopping muondetector-daemon. (hack: https://github.com/MuonPi/muondetector/issues/38)"
sudo systemctl start muondetector-daemon
sleep 3
sudo systemctl stop muondetector-daemon

echo "Testing internet connection..."
ping -c 2 muonpi.org &> /dev/null

if [ $? -ne 0 ]; then
    echo "No internet connection detected."
    echo "I will launch a shell for you to establish your internet connection now."
    echo "When you are done and have verified that it works, exit the shell."
    /bin/bash
else
    echo "Established."
fi

echo "Now enter your mqtt credentials for the muonpi network:"

muondetector-login

echo "Starting muondetector-daemon services..."

sudo systemctl enable muondetector-daemon
sudo systemctl start muondetector-daemon

echo "You are all setup!"

rm /home/pi/.bash_profile
