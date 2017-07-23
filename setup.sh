#!/usr/bin/env bash
# Install Caffeine
#. install_caffeine.sh
# Install packages.
sudo dnf install -y vim tmux thefuck powerline-fonts
# Install powerline.
sudo pip3 install --upgrade pip
pip3 install --user powerline-status
# Install i3-gaps
sudo dnf copr enable yaroslav/i3desktop -y
sudo dnf install i3-gaps compton rofi -y
# Install other packages
sudo dnf install ImageMagick -y
# Create config files.
pwd=`pwd`
rm ~/.bashrc
mkdir ~/.config/i3
mkdir ~/.config/rofi
ln -s "$pwd/bashrc" ~/.bashrc
ln -s "$pwd/vimrc" ~/.vimrc
ln -s "$pwd/tmux.conf" ~/.tmux.conf
ln -s "$pwd/i3config" ~/.config/i3/config
ln -s "$pwd/compton.conf" ~/.config/compton.conf
ln -s "$pwd/rofi.conf" ~/.config/rofi/config
# Set dconf settings.
cat dconfsettings | dconf load /
# Set dark theme.
cat > ~/.config/gtk-3.0/settings.ini <<EOF
[Settings]
gtk-application-prefer-dark-theme=1
EOF

