#!/usr/bin/env bash
set -ex
echo ---------- Installing fonts
cat << 'EOF' >> ~/.bash_profile
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
EOF

mkdir ~/.config
mkdir ~/.config/i3
mkdir ~/.config/rofi/
mkdir ~/.config/terminator
ln -sf "$pwd/configs/xinitrc" ~/.xinitrc
ln -sf "$pwd/configs/i3" ~/.config/i3/config
ln -sf "$pwd/configs/polybar" ~/.config/polybar
ln -sf "$pwd/configs/rofi" ~/.config/rofi/config
ln -sf "$pwd/configs/terminator" ~/.config/terminator/config
ln -sf "$pwd/configs/tmux.conf" ~/.tmux.conf
ln -sf "$pwd/configs/vimrc" ~/.vimrc
ln -sf "$pwd/configs/xinitrc" ~/.xinitrc
ln -sf "$pwd/configs/bashrc" ~/.bashrc

