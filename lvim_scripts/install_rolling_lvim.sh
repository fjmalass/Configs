#! /bin/bash

echo "##################"
echo "Pull Rolling install"
echo "##################"
LV_BRANCH=rolling bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/rolling/utils/installer/install.sh)
