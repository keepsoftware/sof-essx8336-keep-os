#!/bin/bash

echo "--- Setting up output for ESSX8336 ---"
sudo ./remove-pipewire.sh
sudo ./install-sof-firmware.sh
sudo ./setup-pulseaudio.sh
sudo ./setup-hdmi.sh
sudo ./setup-alsa.sh