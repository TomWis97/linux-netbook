#!/usr/bin/env bash
set -ex
echo ---------- Installing fonts
cd /tmp
mkdir ~/.fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/RobotoMono.zip
unzip RobotoMono.zip -d ~/.fonts
rm -f RobotoMono.zip
rm -f "~/.fonts/*Windows Compatible.ttf"
