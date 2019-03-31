#!/usr/bin/env sh

echo "Updating packages..."
sudo pacman -Syu --needed --noconfirm

for pkg in "${PKG[@]}"
do
  echo "Installing ${pkg}..."
  sudo pacman -Syu "$pkg" --needed --noconfirm
done

for aur in "${AUR[@]}"
do
  echo "Installing ${aur}..."
  sudo yaourt -Syu "$aur" --needed --noconfirm
done

SAVED_DIR=$PWD

cd ~/.dotfiles

dirs=$(find . -maxdepth 1 -mindepth 1 -type d -not -name '.git' -print)
for dir in $dirs
do
  echo "Installing ${dir}..."
  sh "$dir"/install.sh
done

sudo curl -o /usr/share/backgrounds/wallpaper.jpg "https://external-preview.redd.it/5_Kr7ETD5QJqLAjNmDWOD5UQ1YT6tu7ARD5QW1fMRbo.jpg?auto=webp&s=b9d529c0a9f036631902d0cb17a27755e00ef71a"

cd "$SAVED_DIR"

