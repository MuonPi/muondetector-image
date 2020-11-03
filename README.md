# muondetector-image


A script to create a custom raspberry pi os image for the muondetector.

In order to run this script, you need to have docker installed, as well as the binfmt-support service running on your system.

`sudo apt install docker binfmt-suport`

The script will attempt to start the binfmt-support service itself, if it cannot do this, it will exit.

After running, if all went well, there will be an image in a folder `deploy` within the main directory.

It uses the project [pi-gen](https://github.com/RPi-Distro/pi-gen) to generate the image. Read the documentation there to see which steps you need to take to modify the image.

Per default the script builds the "lite" image, meaning no graphical user interface and only the muondetector-daemon.

If you also wish to include the muondetector-gui package, run the script with `gui` as parameter.
