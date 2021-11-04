#!/bin/sh

./make-image-docker.sh
./make-image-docker.sh gui
mv deploy/image*.zip ../
