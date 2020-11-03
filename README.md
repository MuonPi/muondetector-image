# muondetector-image


A script to create a custom raspberry pi os image for the muondetector.

In order to run this script, you need to have docker installed, as well as the binfmt-support service running on your system.

`sudo apt install docker binfmt-suport`

The script will attempt to start the binfmt-support service itself, if it cannot do this, it will exit.

After running, if all went well, there will be an image in a folder `deploy` within the main directory.
