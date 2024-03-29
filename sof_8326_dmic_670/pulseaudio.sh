#!/bin/bash

sudo cp pulserst.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/pulserst.sh

sudo cp pulseaudio-restart.service /etc/systemd/system/pulseaudio-restart.service
sudo chmod +x /etc/systemd/system/pulseaudio-restart.service
sudo systemctl daemon-reload
sudo systemctl enable pulseaudio-restart.service