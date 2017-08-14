#!/usr/bin/env bash
set -ex
echo "Run this script as normal user."
sudo echo "Testing sudo"
pwd=`pwd`
echo "Running script from $pwd"
echo "---------- Updating intall"
sudo pacman -Syu --noconfirm
source bash_install/pacaur.sh
cd "$pwd"
source bash_install/packages.sh
cd "$pwd"
source bash_install/config.sh
cd "$pwd"
source bash_install/fonts.sh
cd "$pwd"
set +ex
echo "####################"
echo "# Install Complete #"
echo "####################"
