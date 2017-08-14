#!/usr/bin/env bash
polybar-msg hook notification 3
resolution=`xrandr | fgrep '*' | cut -d ' ' -f 4`
#echo "Resolution: $resolution"
convert ~/Wallpapers/lockscreen.png -resize "$resolution^" -gravity center -extent $resolution /tmp/lockscreen.png
polybar-msg hook notification 1
i3lock -nef -i /tmp/lockscreen.png
rm /tmp/lockscreen.png
