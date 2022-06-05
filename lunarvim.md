# LunarVim

## Make sure to install neomvim = 0.6

### install with `brew`
a. Make sure it is 0.6 `brew
a. Using `brew upgrade neovim`


### Uninstall from `brew`
```
brew uninstall neovim
brew unlink neovim
brew cleanup 
```

b. Compiling
```
git clone git@github.com/neovim/neovim.git
make CMAKE_BUILD_TYPE=Release
sudo make install
```

c. Check status

Launch `neovim` and run from command line `:CheckHealth`

* `brew reinstall luajit`
* `brew reinstall neovim`

#Install
* Check [lunarvim](https://github.com/LunarVim/LunarVim)
* [ChristianChiarulli]( https://github.com/ChristianChiarulli/LunarVim)
```
LVBRANCH=rolling bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/rolling/utils/installer/install.sh)
```
change `LVBranch=master` for stable version


# Update
## LunarVim
## Uninstall if needed
This has been saved in `Temp\lvim\uninstall.sh`

```
rm -rf ~/.local/share/lunarvim
rm -rf ~/.local/bin/lvim
rm -rf ~/.local/share/applications/lvim.desktop
rm -rf ~/.config/lvim/plugin
```

## From scratch
This has been saved in `~/Temp/lvim/uninstall.sh`

```
LVBRANCH=rolling bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/rolling/utils/installer/install.sh)
```

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

Also check `https://github.com/ChristianChiarulli/lvim` (that is in `~/Repos/ChristianChiarulli/lvim`)


## Plugins 
add to the `~/.config/nvim/Config.lua` file
```
-- Additional Plugins
lvim.plugins = {
    {"folke/tokyonight.nvim"},
    {
      "folke/trouble.nvim",
      cmd = "TroubleToggle",
    },
}

Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
}
```
### Obsolete
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


# Range (pictures within telescope)
`pip install ranger-fm`
`pip install ueberzug` (Not for macos as it does not handle x11)


# Relative number
vim.opt.relativenumber = true

# Dap and python

`https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Python`

## install `debugpy`


`https://github-wiki-see.page/m/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Python`
## Configure located in `~/.local/share/lunarvim/lvim/core/config/config/dap.config`

## Installation: 
### Get a virtual environment debuppy

### Use Plugin install `mfussenegger/nvim-dap-python`

# check out 

# Formatting 
## Using `null-ls`
* `python` uses `black`

## `null-ls` 
Enables formatting/linting when no language server exists. Example `black`[formatter]/`flake8`[linter] for `python`  (or `prettier` for `solidy`, `css`) 

`:NullLsInfo`

In `lunarvim`,  `<space>lf` for formatting.


# Searches 
1. To replace `console.log("Hello World")` to `print "Hello World"` [Uses \( and \) to get the regexpression]
`:%s/console.log(\(.\))/print \1/`
