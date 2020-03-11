echo "Copying wallpaper to the directory ..."

sudo cp $1 /usr/share/backgrounds/i3_default_background.jpg

yay -S betterlockscreen

betterlockscreen -u $1
