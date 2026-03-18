#/bin/bash

SOURCE=$(SwitchAudioSource -c)

if [[ $SOURCE != "MacBook Air Speakers" ]]; then
    sketchybar --set $NAME drawing=on
else
    sketchybar --set $NAME drawing=off
fi
