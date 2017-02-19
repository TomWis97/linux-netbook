#!/usr/bin/env bash
sudo dnf install -y vim tmux thefuck powerline-fonts
sudo pip3 install --upgrade pip
pip3 install --user powerline-status
pwd=`pwd`
rm ~/.bashrc
ln -s "$pwd/bashrc" ~/.bashrc
ln -s "$pwd/vimrc" ~/.vimrc
ln -s "$pwd/tmux.conf" ~/.tmux.conf
