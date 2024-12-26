# NVIM PLUGINS

# Creating a neovim plugin for docker

- [DeveloperVoices](https://www.youtube.com/watch?v=HXABdG3xJW4)

## 2024-12-08

- Consider looking at DotFiles from folke: [github](https://github.com/folke/dot)
- [Advent of Neovim](https://www.youtube.com/watch?v=TQn2hJeHQbM)
- Autocomplete `C-xC-l`
- To validate auto complete:
  - `<C-n>` Next
  - `<C-p>` previous
  - `<C-y>` validate/ok

### Tutorial (from the advent of neovim)

- Use `NVIM_APPNAME=nvimexample`
(will use a new fresh config, will need to check `~/.config/nvimexample`
- Execute `lua`:
  - on selected lines: Select and then do `:lua`
  - on current line: `:.lua`
- Check the `vim.<other>` functions: `:lua =vim`
  - for `vim.fn` those are default `vim` functions that can be called directly,
  _e.g._, `vim.fn.stdpath('data')` we can use `:echo stdpath('data')`
- `autocmd`

```lua
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
```

- Executing a command line `let out = vim.fn.system({ "git", "clone", ...})`
(Check the `lazy.nvim` repo)
- `Runtime Paths`: `:echo nvim_list_runtime_paths()`
- For file type settings. use `./after/ftplugin/<language>.lua`
- `options` are located in `vim.opt` (`echo =vim.opt`)
- `TreeSitter`
  - Installed by default in `neovim`
  - `nvim-treesitter` plugin is there to have language specific queries
  - `:Inspect` to list all highlights under cursor
  - `:InspectTree` to list all highlights under cursor
  - We can update the color for a given "node":
 `vim.cmd [[hi @function.builtin.lua guifd=yellow]]`
- Formatting [youtube](https://www.youtube.com/watch?v=mEqqkHLhlGY)
  - Use `:lua vim.lsp.buf.format()` to manually call the format
  - `vim.lsp.formatexpr()` TODO: Read the doc
- Setup short cut to look at lzy packages

```lua
vim.keymap.set("n", "<leader>sp", function()
    builtin.find_files({ cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy") })
end, { desc = "[S]earch Lazy [P]ackages Files " })
```

- In Telescope picker `<C-q>` will create a quick-fix
- Windows/Buffer/Tabs navigation
  - Tab: `<C-w><C-t>` create a new tab
  -`<C-w>T` move current window to a new tab
  -`gt` to next tab, `gT` to previous tab

- In `terminal` mode:
  - Go to Normal mode: `<C-/><C-n>`
- Quickfix (global to project) vs Location (only for current window)
  - To see the error/diagnostics `vim.diagnotics.set`
  - `:cnext` or `:cprev` for quickfix `<C-j>` or `<C-k>`
  - `:lnext` or `:lprev` for location `<M-j>` or `<M-k>`
- `<Esc><Esc>` to Normal mode (as `<C-\><C-n>` is overloaded by windows 11)

- create a small terminal and send command to it

```lua
-- avoid line numbers in terminal
vim.api.nvim_create_autocmd("TermOpen", {
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

-- create a small terminal window at bottom and allow getting commands without being in the terminal
local channel_id = 0
vim.keymap.set("n", "<space>st", function()
	vim.cmd.vnew()
	vim.cmd.term()
	-- put at bottom
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 15)
	channel_id = vim.bo.channel
end)
vim.keymap.set("n", "<space>example", function()
	vim.fn.chansend(channel_id, "git status\r\n")
end)
```
  ## 2023-03-31 [thePrimeagen](https://youtube.com/)

## 2022-12-17 [tj_devries](https://youtube.com/)

- [kickstart.lua](https://github.com/nvim-lua/kickstart.nvim)
- Default keymaps
 |`<leader>sf` | Telescope find file |
 |`<leader>sn` | Telescope find file in `~/.config/nvim` |
We have updated to use include 2024-12-08
  1. (without stow) in `~/.config/nvim`
  2. with stow move to `/mnt/d/Repos/DotFiles/` run: `stow -Stv ~ nvim`
For `Windows` copy nvim directory `D:\Repos\DotFiles\nvim\.config\nvim` to `c:\Users\<user>\AppData\Local\`
- Update the type of pickers use `pickers`

## Set local directory to current file directory

- `:cd %:p:h`
- `:tcd %:p:h` for current tab directory
- `:wcd %:p:h` for current window directory

## 2022-07-29

- Run Time Path `:help rtp`
  - Check also `stdpath("config")`

## 2022-05-30

1. Setting up the current directory as plugin repo `nvim --cmd "set +rtp=.`
2. Create `lua` module in source directory `mkdir -p lua/<plugin_name>` and files
  a. `touch lua/<plugin_name>/init.lua`
  b. `touch lua/<plugin_name>/<module_name>.lua`
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
Rem: Lua does not reload an already existing module.
You need to delete it and reload an edited version
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

7. Installing with the plugin manager

## 2002-06-17

### From the Primegean  `https://www.twitch.tv/videos/1504554609`

- In `~Repos/neovim-lua-config`
- Create `.config/lua-config`

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

## Using treesitter

- Check [nvim-Femaco](https://github.com/AckslD/nvim-FeMaco.lua/blob/main/lua/femaco/edit.lua)
