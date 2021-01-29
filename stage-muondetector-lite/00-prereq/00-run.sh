#!/bin/sh

rm "${ROOTFS_DIR}/etc/motd"
install files/11-muonpiwelcome "${ROOTFS_DIR}/etc/update-motd.d/"
install files/setup.sh "${ROOTFS_DIR}/home/pi/.bash_profile"
