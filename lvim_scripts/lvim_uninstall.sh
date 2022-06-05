#!/bin/bash
# This will remove all the personalized configs (Essential
echo "Backup config"
echo "cp ~/.config/lvim/config.lua to $(dirname -- "$0";)/bkups/config_old_$(date +%Y_%m_%d).lua"
mkdir -p $(dirname -- "$0")/bkups && cp ~/.config/lvim/config.lua $(dirname -- "$0";)/bkups/config_old_$(date +%Y_%m_%d).lua
# # mv -f ~/.config/lvim/config.lua ~/.config/lvim/config_old.lua
#echo "copy .config/lvim/config.lua"
# mv -f ~/.config/lvim/config.lua ~/.config/lvim/config_old.lua

echo "Removing .local/share"
rm -rf ~/.local/share/lunarvim
rm -rf ~/.local/bin/lvim
rm -rf ~/.local/share/applications/lvim.desktop
echo "Removing .config/lvim"
rm -rf ~/.config/lvim
