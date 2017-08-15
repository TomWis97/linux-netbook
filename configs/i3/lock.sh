#!/usr/bin/env bash
create_back () {
    convert ~/Wallpapers/lockscreen.png -resize "$resolution^" -gravity center -extent $resolution /tmp/lockscreen.png
}
polybar-msg hook notification 3
resolution=`xrandr | fgrep '*' | cut -d ' ' -f 4`
if [ -f /tmp/lockscreen.png ]; then
    #echo "File exists"
    imgres=`identify /tmp/lockscreen.png | cut -d ' ' -f 3`
    if [ "$resolution" != "$imgres" ]; then
        #echo "Different resolution!"
        create_back
    else
        echo "Using cached lockscreen background"
    fi
else
    #echo "File doesn't exist"
    create_back
fi
#echo "Resolution: $resolution"
polybar-msg hook notification 1
i3lock -nef -i /tmp/lockscreen.png
#rm /tmp/lockscreen.png
