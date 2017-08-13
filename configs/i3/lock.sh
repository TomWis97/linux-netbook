#!/usr/bin/env bash
resolution=`xrandr | fgrep '*' | cut -d ' ' -f 4`
#echo "Resolution: $resolution"
convert ~/Wallpapers/lockscreen.png -resize "$resolution^" -gravity center -extent $resolution /tmp/lockscreen.png
i3lock -nef -i /tmp/lockscreen.png
rm /tmp/lockscreen.png
