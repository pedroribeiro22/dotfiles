#!/bin/bash

git clone https://github.com/asdf-vm/asdf.git ~/.asdf

SAVED_DIR=$PWD

cd ~/.asdf || exit

git checkout "$(git describe --abbrev=0 --tags)"

cd "$SAVED_DIR" || exit

ln -sfT ~/.dotfiles/asdf/asdfrc ~/.asdfrc

ln -sfT ~/.dotfiles/asdf/tool-versions ~/.tool-versions

asdf update

# Restart zsh in order for it to realize that asdf is installed
source .zshrc
