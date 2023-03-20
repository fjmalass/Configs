# NVIM PLUGINS

## 2022-12-17 [tj_devries](https://youtube.com/)

- [kickstart.lua](https://github.com/nvim-lua/kickstart.nvim)

- Default keymaps

 |`<leader> sf` | Telescope |

1. (without stow) in `~/.config/nvim`

## 2022-07-29

- Run Time Path `:help rtp`
  - Check also `stdpath("config")`

## 2022-05-30

1. Setting up the current directory as plugin repo `nvim --cmd "set +rtp=.`
2. Create `lua` module in source directory `mkdir -p lua/<plugin_name>` and files

* `touch lua/<plugin_name>/init.lua`
* `touch lua/<plugin_name>/<module_name>.lua`

3. Create function in `<module_name>.lua` file

  ``` lua
    local function greet()
       print('hello')
     end
     return greet
  ```

4. Import module into plugin in `init.lu`

  ``` lua
    local greet = require('<module_name>.<module-name>')
    return {
        greet = greet
      }
  ```

5. Test in load in nvim
`:lua require('<plugin_name').greet()`

6. Check to debug

Rem: Lua does not reload an already existing module. You need to delete it and reload an edited version

a. Create a `dev/init.lua`

``` lua
--- force lua to import the module again
package.loaded['dev'] = nil
pacakge.loaded['<plugin-name>'] = nil
pacakge.loaded['<plugin-name>.<module_name>'] = nil
--- can call :luafile dev/init.lua or create a short cut
vim.api.nvim_set_keymap('n', ',r', '<cmd>luafile dev/init.lua<cr>', {})
-- also test
Testing = require('plugin_name')
vim.api.nvim-set_keymap('n', ',w', '<cmd>lua Testing.greet()<cr>', {})
```

6. Installing with the plugin manager

## 2002-06-17

### From the Primegean  https://www.twitch.tv/videos/1504554609

* In `~Repos/neovim-lua-config`
* Create `.config/lua-config`


## Get highlighted

``` lua
local last_highlighted = ""
function SetFromHighlight()
  local _, s_row, _, _ = unpack(vim.fn.getpos("'<"))
  local _, e_row, _, _ = unpack(vim.fn.getpos("'>"))
  last_highlighted = table.concat(
  vim.api.nvim_buf_get_lines(0, s_row - 1, e_row, false), "\n"
  )
end

```


## Using treesitter

- Check [nvim-Femaco](https://github.com/AckslD/nvim-FeMaco.lua/blob/main/lua/femaco/edit.lua)
