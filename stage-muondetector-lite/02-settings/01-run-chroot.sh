#!/bin/sh

systemctl disable muondetector-daemon

chown pi:pi /home/pi/.bash_profile
chmod +x /home/pi/.bash_profile

#enable_uart=1
raspi-config nonint do_serial 0
#dtparam=i2c_arm=on
raspi-config nonint do_i2c 0
#disable serial login
sed -i 's/console\=serial0,115200*//' /boot/cmdline.txt

