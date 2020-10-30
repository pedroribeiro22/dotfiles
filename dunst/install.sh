#!/bin/bash

yay -S dunst --needed --noconfirm

ln -sfT "$HOME/.dotfiles/dunst/dunstrc" "$HOME/.config/dunst/dunstrc"
