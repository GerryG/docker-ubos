#!/usr/bin/bash -xe

pacman --noconfirm -Syu
pacman --noconfirm -R fakeroot
useradd -m buildmaster
pacman --noconfirm -S sudo

#Then create file /etc/sudoers.d/buildmaster with the following content:

echo buildmaster ALL = NOPASSWD: ALL > /etc/sudoers.d/buildmaster
# Make sure the permissions are correct:

chmod 600 /etc/sudoers.d/buildmaster

mkdir ~buildmaster/.ssh

chown -R buildmaster:buildmaster ~buildmaster/.ssh
chmod 0700 ~buildmaster/.ssh
