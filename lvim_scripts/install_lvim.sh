#! /bin/bash

echo "##################"
echo "Pull Rolling install"
echo "##################"
LV_BRANCH=rolling bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/rolling/utils/installer/install.sh)

echo "##################"
echo "copy Configuration without the .git files"
echo "##################"
cp -r ~/Repos/ChristianChiarulli/lvim  ~/.config/
cd ~/Repos/ChristianChiarulli/lvim
find . \! \( -path "*/.git/*" -or -name ".git" -or -name . \) -print | cpio -padvu ~/.config/lvim

