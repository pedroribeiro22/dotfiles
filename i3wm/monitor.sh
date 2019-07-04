#!/bin/bash

# Defining which is the main monitor
MONITOR=eDP1

# Function that reacts whenever the HDMI1 cable gets plugged
function ActivateHDMI1 {
    echo "Switching to HDMI1"
    xrandr --output HDMI1 --mode 1920x1080 --dpi 160 --output eDP1 --off
    MONITOR=HDMI1
    setxkbmap pt
}

# Function that reacts whenever the HDMI1 cable gets unplugged
function DeactivateHDMI1 {
    echo "Switching to eDP1"
    xrandr --output HDMI1 --off --output eDP1 --auto
    MONITOR=eDP1
    setxkbmap pt
}

# Function that checks if HDMI1 cable is connected
function HDMI1Connected {
    ! xrandr | grep "^HDMI1" | grep disconnected
}

# Actual script
# Should be executed whenever HDMI1 cable gets plugged or unplugged
if HDMI1Connected
then
  ActivateHDMI1
fi

if ! HDMI1Connected
then
  DeactivateHDMI1
fi
