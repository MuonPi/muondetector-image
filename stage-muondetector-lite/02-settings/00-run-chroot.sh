#!/bin/sh

#enable_uart=1
raspi-config nonint do_serial 0
#dtparam=i2c_arm=on
raspi-config nonint do_i2c 0
#disable serial login
sed -i 's/console\=serial0,115200*//' /boot/cmdline.txt
