#!/usr/bin/env sh

echo "Installing Haskell"
sudo pacman -Syu ghc ghc-libs ghc-static cabal-install

ln -sfT ~/.dotfiles/haskell/ghci ~/.ghci
