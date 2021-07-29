# muondetector-image

A script to create a custom raspberry pi os image for the muondetector.


After running, if all went well, there will be an image in a folder `deploy` within the main directory.

It uses the project [pi-gen](https://github.com/RPi-Distro/pi-gen) to generate the image. Read the documentation there to see which steps you need to take to modify the image.

Per default the script builds the "lite" image, meaning no graphical user interface and only the muondetector-daemon.

If you also wish to include the muondetector-gui package, run the script with `gui` as parameter.

It is recommended to use docker for building the image.

## building with docker
In order to run the docker script, you need to have docker installed, as well as the binfmt-support service running on your system.

`sudo apt install docker.io binfmt-suport`

run `./make-image-docker.sh` to build the image.

The script will attempt to start the binfmt-support service itself, if it cannot do this, it will exit.

### Note for non systemd distributions

Should you use a distribution which does not use systemd, you will need to start the binfmt-support service yourself and comment out lines [13 to 19](https://github.com/MuonPi/muondetector-image/blob/a2842104eb31470dbfd05f2c0e7cd7532d564a0c/make-image-docker.sh#L13-L19) in the `make-image-docker.sh` script. 

## building without docker
When not wanting to use the docker image, you need to install the following packages:

`apt install coreutils quilt parted qemu-user-static debootstrap zerofree zip dosfstools bsdtar libcap2-bin grep rsync xz-utils file git curl bc`

run `./make-image.sh` to build the image.

### Note for non-debian based distributions
Should you use a distribution not based on debian, you will need to use the docker version of this script, since the original build script from [pi-gen](https://github.com/RPi-Distro/pi-gen#dependencies) depends on debian specific executables.
