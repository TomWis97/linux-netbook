#!/usr/bin/env bash
set -e
echo "---------- Installing fonts
cat << 'EOF' >> ~/.bash_profile
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
EOF

ln -sf configs/xinitrc ~/.xinitrc
mkdir ~/.config/i3
ln -sf configs/i3 ~/.config/i3/config
ln -sf configs/polybar ~/.config/polybar
mkdir ~/.config/rofi/
ln -sf configs/rofi ~/.config/rofi/config
mkdir ~/.config/terminator
ln -sf configs/terminator ~/.config/terminator/config
ln -sf configs/tmux.conf ~/.tmux.conf
ln -sf configs/vimrc ~/.vimrc
ln -sf configs/xinitrc ~/.xinitrc

