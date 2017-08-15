#!/usr/bin/env bash
set -ex
echo ---------- Installing config files
cat << 'EOF' >> ~/.bash_profile
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
EOF

mkdir ~/.config
mkdir ~/.config/rofi/
mkdir ~/.config/terminator
ln -sf "$pwd/configs/xinitrc" ~/.xinitrc
ln -sf "$pwd/configs/i3" ~/.config/i3
ln -sf "$pwd/configs/polybar" ~/.config/polybar
ln -sf "$pwd/configs/rofi" ~/.config/rofi/config
ln -sf "$pwd/configs/terminator" ~/.config/terminator/config
ln -sf "$pwd/configs/tmux.conf" ~/.tmux.conf
ln -sf "$pwd/configs/vimrc" ~/.vimrc
ln -sf "$pwd/configs/xinitrc" ~/.xinitrc
ln -sf "$pwd/configs/bashrc" ~/.bashrc

sudo cp "$pwd/configs/resume.service" /etc/systemd/system/resume.service
sudo systemctl enable resume.service

sudo cp "$pwd/bin/i3ipc-lock" /usr/local/bin/i3ipc-lock

mkdir ~/Wallpapers
cp "$pwd/lockscreen.png" ~/Wallpapers/lockscreen.png

