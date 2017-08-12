#!/usr/bin/env bash
set -ex
echo "---------- Installing packages"
pacaur --noconfirm -S \
  i3-gaps \
  xorg-server \
  xorg-xinit \
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
  ttf-dejavu-sans-mono-powerline-git
