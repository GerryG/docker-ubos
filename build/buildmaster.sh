#!/usr/bin/bash -xe

mkdir -p ~/aur
cd ~/aur
curl -L -O https://aur.archlinux.org/packages/mu/multipath-tools/multipath-tools.tar.gz
echo curled mpath tools
tar xvfz multipath-tools.tar.gz
echo extracted multipth-tools
cd multipath-tools
ls -ltra
#makepkg -c -f -A

pwd
ls -ltra

