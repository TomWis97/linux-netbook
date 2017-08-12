#!/usr/bin/env bash
echo "---------- Installing packages"
sudo pacaur -S \
  i3 \
  xorg-server \
  xorg-init \
  xf86-video-intel \
  arandr \
  nitrogen \
  network-manager-applet \
  remmina \
  vim \
  terminator \
  polybar-git \
  rofi-dmenu \
  tmux \
  xorg-x11-apps \
  ttf-dejavu-sans-mono-powerline-git
