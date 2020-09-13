#!/bin/sh

[! -d "$HOME/.config/bspwm"] && mkdir $HOME/.config/bspwm
ln -sf $HOME/.dotfiles/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc
