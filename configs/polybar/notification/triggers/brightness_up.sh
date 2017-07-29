#!/usr/bin/env bash
xbacklight +10
pid=$$
echo $pid > /tmp/notify.pid
polybar-msg hook notification 2
sleep 2
if [[ "$pid" == $(cat /tmp/notify.pid) ]]; then
    ~/.config/polybar/notification/triggers/restore.sh
    exit 0
fi
exit 0
