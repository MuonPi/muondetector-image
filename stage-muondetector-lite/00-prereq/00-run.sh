#!/bin/sh

rm "${ROOTFS_DIR}/etc/motd"
install files/20-muonpi-motd "${ROOTFS_DIR}/etc/update-motd.d/"
install files/setup.sh "${ROOTFS_DIR}/home/pi/.bash_profile"
