#!/usr/bin/env bash
set -ex
echo "---------- Installing packages"
pacaur --noedit --noconfirm -S \
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
  rofi-dmenu \
  tmux \
  unzip \
  ttf-dejavu-sans-mono-powerline-git \
  google-chrome \
  libreoffice-fresh \
  htop \
  imagemagick \
  i3lock \
  wireless_tools \
  firefox
pacaur --noedit --noconfirm -S polybar-git
