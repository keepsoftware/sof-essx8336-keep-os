#!/bin/bash
case $1 in
    post)
            #sudo runuser -u $USER -- pulseaudio -D;
    sudo runuser -u $USER -- notify-send --hint int:transient:1 "pulseaudio restarted"
            killall pulseaudio;
            #pacmd set-default-sink 1;
    ;;
esac
