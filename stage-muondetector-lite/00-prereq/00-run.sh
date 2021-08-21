#!/bin/sh

rm "${ROOTFS_DIR}/etc/motd"
install files/20-muonpi-motd "${ROOTFS_DIR}/etc/update-motd.d/"
install files/zprofile "${ROOTFS_DIR}/home/pi/.zprofile"
install -d "${ROOTFS_DIR}/opt/muondetector/"
install files/initial_setup "${ROOTFS_DIR}/opt/muondetector/initial_setup"
install files/zshrc "${ROOTFS_DIR}/home/pi/.zshrc"
install -d "${ROOTFS_DIR}/home/pi/.zshrc.d"
for f in $(ls files/zshrc.d/); do
    install "files/zshrc.d/$f" "${ROOTFS_DIR}/home/pi/.zshrc.d/"
done
