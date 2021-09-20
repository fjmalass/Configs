# LunarVim

## Make sure to install neomvim> 0.5

a. Using `brew update neovim`

b. Compiling
```
git clone git@github.com/neovim/neovim.git
make CMAKE_BUILD_TYPE=Release
sudo make instll
```

c. Check status

Launch `neovim` and run from command line `:CheckHealth`

* `brew reinstall luajit`
* `brew reinstall neovim`

#Install
* Check [lunarvim](https://github.com/LunarVim/LunarVim)
* [ChristianChiarulli]( https://github.com/ChristianChiarulli/LunarVim)

```
LVBRANCH=rolling bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
```
change `LVBranch=master` for stable version


# Update

## LunarVim
## Go to `cd ~/.local/share/lunarvim/lvim && git pull`
* `cd ~/.config/nvim && git pull`
* `lvim +LvimCacheReset +PackerUpdate`
* Can call `:LvimCacheReset` and `PackerUpdate` from command line
* Update the `lvim` binary
```
LUNARVIM_RUNTIME_DIR="${LUNARVIM_RUNTIME_DIR:-$HOME/.local/share/lunarvim"
bash "$LUNARVIM_RUNTIME_DIR/utils/installer/install_bin.sh"
```

## Configuration file
`~/.config/nvim/lv-config.lua`
This should be managed with `stow` check [`stow.md`](stow.md)

Outdated? Located in `LunarVim/utils/installer/lv-config.examples.lua`



## Plugins
`:PackerUpdate`

If some update on `lv-config.lua`
`:PackerInstall`
`:PackerCompile`

# LspInstalls

`:LspInstall`

* python
* lua
* cpp
* html
* css
* go

`conda install yapf`


# Tree sitter 
`:TSIntall <TAB>` to install language
* python
* lua
* cpp
* html
* go
* toml


# Nlsp  (configuration for lsp)
`:NlspConfig <Tab>`
* python
* jsonls
* lua
* cpp
* html

# File
* lunarvim resides in `~/.local/share/lunarvim`
* launch with `lvim`
## lvim is installed in `~/.local/bin/lvim`

```
#!/bin/zsh

nvim -u ~/.local/share/lunarvim/lvim/init.lua --cmd "set runtimepath+=~/.local/share/lunarvim/lvim" "$1"
```

# Configuration File

To activate other plugins and language features use the `lv-config.lua` 
file provided in the `nvim` folder 
(`~/.config/nvim/lv-config.lua`) in the master branch or 
(`~/.config/lvim/config.lua`) on rolling


# Range (picturs within telescope)
`pip install ranger-fm`
`pip install ueberzug` (Not for macos as it does not handle x11)
