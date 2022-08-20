#!/bin/sh

# Center current windows on the second monitor

IFS='x' read screenWidth screenHeight < <(xdpyinfo | grep dimensions | grep -o '[0-9x]*' | head -n1)

width=$(xdotool getactivewindow getwindowgeometry --shell | head -4 | tail -1 | sed 's/[^0-9]*//')
height=$(xdotool getactivewindow getwindowgeometry --shell | head -5 | tail -1 | sed 's/[^0-9]*//')

## I added + 683 to center only on the second monitor
newPosX=$((screenWidth / 2 - width / 2 + 683))
## I forced allways top position
# newPosY=$((screenHeight / 2 - height / 2))
newPosY=0

xdotool getactivewindow windowmove "$newPosX" "$newPosY"
