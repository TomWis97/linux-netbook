#!/usr/bin/env bash
set -xe
pacaur --noedit --noconfirm -S python-pip
pip install --user powerline-status
sudo pip install i3ipc
