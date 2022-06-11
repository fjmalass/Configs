#! /bin/bash
echo "##################"
echo "copy Configuration without the .git files"
echo "##################"
# cp -r ~/Repos/ChristianChiarulli/lvim  ~/.config/
cd ~/Repos/ChristianChiarulli/lvim
find . \! \( -path "*/.git/*" -or -name ".git" -or -name . -or -name ".gitignore" \) -print | cpio -padvu ~/.config/lvim


