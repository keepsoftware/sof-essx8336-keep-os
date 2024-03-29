#!/bin/bash

(
    cd ./sof_8326_dmic_670
    echo "Start copying topology files..."
    #tar -xvf data.tar -C /
    
    cp ./tplg/*.tplg /lib/firmware/intel/sof-tplg/ # Copy tplg files
    echo "tplg files copied successfully"

    cp sof-dyndbg.conf /etc/modprobe.d/sof-dyndbg.conf  # Copy debug config
    echo "Debug config file copied successfully"

    #cp es8336.conf /etc/modprobe.d/

    sudo chmod +x ./ucm/ucm.sh  
    cd ./ucm/
    sudo ./ucm.sh # Install ucm
    echo "ucm installed successfully" 

    sudo chmod +x ./pulseaudio.sh
    sudo ./pulseaudio.sh


)

echo "=== Done!"
exit 0