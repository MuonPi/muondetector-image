#!/bin/sh

systemctl disable muondetector-daemon

chown pi:pi /home/pi/.bash_profile
chmod +x /home/pi/.bash_profile

#enable_uart=1
raspi-config nonint do_serial 0
#dtparam=i2c_arm=on
raspi-config nonint do_i2c 0
#disable serial login
sed -i -e 's/\( *\)console=\(serial\|tty\(AMA\|S\)\)0,[0-9]* */\1/' /boot/cmdline.txt

# Set the serial port selector for paspberry pi 3
echo -e "[pi3]\ndtoverlay=pi3-miniuart-bt" >> /boot/config.txt
