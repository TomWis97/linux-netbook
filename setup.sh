#!/usr/bin/env bash
# Install Caffeine
#. install_caffeine.sh
# Install packages.
sudo dnf install -y vim tmux thefuck powerline-fonts
# Install powerline.
sudo pip3 install --upgrade pip
pip3 install --user powerline-status
# Create config files.
pwd=`pwd`
rm ~/.bashrc
ln -s "$pwd/bashrc" ~/.bashrc
ln -s "$pwd/vimrc" ~/.vimrc
ln -s "$pwd/tmux.conf" ~/.tmux.conf
# Set dconf settings.
cat dconfsettings | dconf load /
# Set dark theme.
cat > ~/.config/gtk-3.0/settings.ini <<EOF
[Settings]
gtk-application-prefer-dark-theme=1
EOF

