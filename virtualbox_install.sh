#!/usr/bin/sh


# Assuming the result of `uname -r` is something like:
# 5.8.11-1-MANJARO

echo "Installing Virtualbox"

yay -S virtualbox --needed --noconfirm

echo "Installing Virtualbox Host and Guest modules"

yay -S linux58-virtualbox-guest-modules --needed --noconfirm
yay -S linux58-virtualbox-host-modules --needed --noconfirm

echo "Adding the current user to the **vboxusers** group"

sudo usermod -aG vboxusers $USER

echo "Reload virtualbox kernel modules"

sudo vboxreload
