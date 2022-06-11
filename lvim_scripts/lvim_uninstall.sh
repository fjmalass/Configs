#!/bin/bash
# This will remove all the personalized configs (Essential
echo "Backup config"
sh $(dirname -- "$0")/backup_config_lua.sh
#echo "copy .config/lvim/config.lua"
# mv -f ~/.config/lvim/config.lua ~/.config/lvim/config_old.lua

echo "Removing .local/share"
rm -rf ~/.local/share/lunarvim
rm -rf ~/.local/bin/lvim
rm -rf ~/.local/share/applications/lvim.desktop
echo "Removing .config/lvim"
rm -rf ~/.config/lvim
