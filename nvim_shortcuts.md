# From [vimtricks](https://bit.ly/vimtricks)

1. Saving:
* *Session*:
   * *Saving*: `:mks <tmp/session.vim>`
   * *Loading*: `nvim -S <tmp/session.vim>` or `source <tmp/session.vim>`
2. Calculation:
From *insert mode*: `<C-r>=`
3. Motion:

* `^`: First non blank character of current line
* `+`: First non blank character of next line
* `S`: Delete current and go into insert mode
* `g_`: Last non blank character of line
* `ea`: Append at end of current word
* `yyp`: Duplicate current line
* `yapP`: Duplicate current paragraph
* `~`: Toggle case of current character
* `da"`: Delete the next double-quote string
* `ca"`: Change inside excludeing the double-quote (Use [{ etc)
* `ci"`: Change inside including the double-quote (Use [{ etc)
* `gUw`: Uppercase until end of word (<u> -> lowercase, <~> -> toggle)
* `gUiw`: Uppercase entire word
* `dap`: Delete whole paragraph
* ```[`: Jump to beginning of the last yanked text
* ```]`: Jump to end of the last yanked text
* `g;` Jump to the last change made
* `g,` Jump forward through the change list
* `&`: Repeat last substitution current line
* `g&`: Repeat last substitution all lines
* `ga`: Show details about character under cursor
