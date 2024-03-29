#!/bin/bash

echo "--- Setting up ALSA output for ESSX8336 ---"

# This may be different for your system, you can check it by running aplay -l
OUTPUT_DEVICE='-c 0'

amixer $OUTPUT_DEVICE cset name='Speaker Switch' on
amixer $OUTPUT_DEVICE cset name='Headphone Playback Volume' 3,3
amixer $OUTPUT_DEVICE cset name='Right Headphone Mixer Right DAC Switch' on
amixer $OUTPUT_DEVICE cset name='Left Headphone Mixer Left DAC Switch' on
amixer $OUTPUT_DEVICE cset name='DAC Playback Volume' 999,999
amixer $OUTPUT_DEVICE cset name='Headphone Mixer Volume' 999,999
amixer $OUTPUT_DEVICE sset Headphone 3
amixer $OUTPUT_DEVICE sset 'IEC958' on
amixer $OUTPUT_DEVICE sset 'DAC' on 100%
amixer $OUTPUT_DEVICE sset 'ADC' on 100%
amixer $OUTPUT_DEVICE sset 'ADC PGA' on 50%
amixer $OUTPUT_DEVICE sset 'ADC PGA Gain' on 50%
amixer $OUTPUT_DEVICE sset 'Headset Mic' on 100%
amixer $OUTPUT_DEVICE sset 'Internal Mic' on 100%




echo "--- Setting up ALSA output for ESSX8336"

# This may be different for your system, you can check it by running arecord -l
INPUT_DEVICE='-c 0'

amixer $INPUT_DEVICE cset name='ADC PGA Gain Volume' 7
amixer $INPUT_DEVICE cset name='ADC Capture Volume' 150
amixer $INPUT_DEVICE cset name='Internal Mic Switch' on
amixer $INPUT_DEVICE cset name='Headset Mic Switch' on
amixer $INPUT_DEVICE cset name='Differential Mux' 'lin2-rin2'




alsactl store

echo "=== Done!"
exit 0