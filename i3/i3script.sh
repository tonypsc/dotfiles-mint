#!/bin/bash
# Wrapper around i3status to show keyboard layout

i3status | while read -r line; do
  layout=$(setxkbmap -query | awk '/layout/ {print toupper($2)}')
  echo " $layout | $line" || exit 1
done
