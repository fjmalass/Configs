# Default location specification for files and files formats

* $XDG_DATA_HOME -> $HOME/.local/share
* $XDG_CONFIG_HOME -> $HOME/.config
* $XDG_STATE_HOME -> $HOME/.local/state [data persisting between application restarts (log/history/used files)]
* $XDG_CACHE_HOME -> $HOME/.cache

# Search directorie to look at data (separate directories with `:`)
* $XDG_DATA_DIRS -> /usr/local/share/:/usr/share/
* $XDG_CONFIG_DIRS -> /etc/xdg
* $XDG_RUNTIME_DIRS
* $XDG_CACHE_DIRS

## Overriding default should be done in 
`~/.profile` (for a given user)
`/etc/profile` (for all users)

Zsh Example: `export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}`
