#!/bin/bash
LANG=$(setxkbmap -query | grep layout | egrep -o "us|no")
if [ "${LANG}" == "us" ]; then
  setxkbmap no
else
  setxkbmap us
fi
