#!/usr/bin/env sh

echo "Installing Haskell"
sudo apt-get install ghc 
sudo apt-get install ghc-libs 
sudo apt-get install ghc-static 
sudo apt-get install cabal-install

ln -sfT ~/.dotfiles/haskell/ghci ~/.ghci
