#!/bin/bash

echo "--- Setting up PULSEAUDIO and remove PIPEWIRE ---"
apt-get update
apt-get -y install pulseaudio pulseaudio-utils pulseaudio-module-bluetooth 
apt-get -y remove --purge pipewire*

echo "=== Done!"
exit 0