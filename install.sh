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

# sudo curl -o /usr/share/backgrounds/wallpaper.jpg  "https://external-preview.redd.it/DmeNKK784pSPFsHhTRLZpD3P_MDuHz73G7QXu2DxqCw.png?auto=webp&s=a8997d2833ee45995dec08f521e6c0fdbd21af51"
sudo curl - o /usr/share/backgrounds/wallpaper.jpg "https://external-preview.redd.it/E5IL3EFywIE8YI9PdHNuAE5hSnvXPot9XdxH2OFmFcA.png?width=960&crop=smart&auto=webp&s=027c80f45e87d04dcd991d05a7aea1123a825cdd"

cd "$SAVED_DIR"

