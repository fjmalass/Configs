#! /bin/bash
# echo "Copy .config to Temp"
# cp -f ~/.config/lvim/config.lua ./config_bkup.lua

echo "cp ~/.config/lvim/config.lua to $(dirname -- "$0";)/bkups/config_old_$(date +%Y_%m_%d).lua"
mkdir -p $(dirname -- "$0")/bkups && cp ~/.config/lvim/config.lua $(dirname -- "$0";)/bkups/config_old_$(date +%Y_%m_%d).lua
