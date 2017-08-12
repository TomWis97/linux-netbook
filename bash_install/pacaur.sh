#!/usr/bin/env bash
echo ---------- Installing pacaur
mkdir /tmp/p
cd /tmp/p
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/cower.tar.gz
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/pacaur.tar.gz
tar xvf cower.tar.gz
cd cower
gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53
makepkg
makepkg -i
cd ..
tar xvf pacaur.tar.gz
cd pacaur
makepkg -s
makepkg -i
