#!/usr/bin/env bash

icon="$HOME/.xlock/lock-icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"



#Pixelated
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"

#Blurred
#convert "$tmpbg" -blur 0x8 "$tmpbg"



#Overlaying icon
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"






i3lock -u -i "$tmpbg"
