#!/bin/bash
DIR='/home/marcorgz1/Pictures/wallpapers'
BG=$(find "$DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \) | shuf -n 1)

swww img $BG --transition-duration 1.2 --transition-step 255 --transition-type outer --transition-pos 0,0 &&
  wal -i $BG --saturate 0.7 -n -b 010101 &&
  notify-send -i $BG "New Wallpaper" &&
  pywalfox update
