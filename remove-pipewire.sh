#!/bin/bash

echo "--- Setting up PULSEAUDIO and remove PIPEWIRE ---"
apt-get update
apt-get install pulseaudio pulseaudio-utils pulseaudio-module-bluetooth 
apt-get remove --purge pipewire*

echo "=== Done!"
exit 0