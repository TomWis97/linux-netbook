#!/usr/bin/env bash
set -e
echo "Run this script as normal user."
sudo echo "Testing sudo"
pwd=`pwd`
echo "Running script from $pwd"
source bash_install/pacaur.sh
cd "$pwd"
source bash_install/packages.sh
cd "$pwd"
source bash_install/config.sh
cd "$pwd"
source bash_install/fonts.sh
cd "$pwd
