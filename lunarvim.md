# LunarVim

## Make sure to install neomvim> 0.5
`brew reinstall luajit`
`brew reinstall neovim`

#Install
https://github.com/ChristianChiarulli/LunarVim
```
LVBRANCH=rolling bash <(curl -s https://raw.githubusercontent.com/ChristianChiarulli/lunarvim/rolling/utils/installer/install.sh)
```
change `LVBranch=master` for stable version


# Update

## Configuration file
`~/.config/nvim/lv-config.lua`

Located in `LunarVim/utils/installer/lv-config.examples.lua`

## LunarVim
`cd ~/.config/nvim && git pull`


## Plugins
`:PackerUpdate`

If some update on `lv-config.lua`
`:PackerInstall`
`:PackerCompile`

# LspInstalls

* python
* lua
* cpp
* html

`` conda install yapf``


# File
* lunarvim resides in `~/.local/share/lunarvim`
* launch with `lvim`
## lvim is installed in `~/.local/bin/lvim`

```
#!/bin/zsh

nvim -u ~/.local/share/lunarvim/lvim/init.lua --cmd "set runtimepath+=~/.local/share/lunarvim/lvim" "$1"
```

