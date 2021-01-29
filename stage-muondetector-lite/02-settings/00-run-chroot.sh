#!/bin/sh

#enable_uart=1
raspi-config nonint do_serial 0
#dtparam=i2c_arm=on
raspi-config nonint do_i2c 0
#disable serial login
sed -i 's/console\=serial0,115200*//' /boot/cmdline.txt

# copy motd to correct location
cp files/11-muonpiwelcome
rm -rf /erc/motd

systemctl disable muondetector-daemon

cp files/setup.sh /home/pi/.bash_profile
chown pi:pi /home/pi/.bash_profile
chmod +x /home/pi/.bash_profile
