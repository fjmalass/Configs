#! /bin/bash
echo ###########################
echo ###########################
echo # Copy Configuraiton (ChristianChiarulli 
cd ~/Repos/ChristianChiarulli/lvim 
find . \! \( -path "*/.git/*" -or -name ".git" -or -name . -or -name ".gitignore" \) -print | cpio -padvu ~/.config/lvim

