#!/bin/sh

rm "${ROOTFS_DIR}/etc/motd"
install files/20-muonpi-motd "${ROOTFS_DIR}/etc/update-motd.d/"
install files/sprofile "${ROOTFS_DIR}/home/pi/.profile"
install files/zshrc "${ROOTFS_DIR}/home/pi/.zshrc"
install files/zshrc.d "${ROOTFS_DIR}/home/pi/.zshrc.d"
