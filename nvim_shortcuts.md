# From [vimtricks](https://bit.ly/vimtricks)


1. Saving:

* *Session*:
   * _Saving_: `:mks <tmp/session.vim>`
   * _Loading_: `nvim -S <tmp/session.vim>` or `source <tmp/session.vim>`

2. Calculation:

From _insert mode_: `<C-r>=`

3. Motion:

 * `^`: First non blank character of current line
 * `+`: First non blank character of next line
 * `g_`: Last non blank character of line
 * `ea`: Append at end of current word
 * `yyp`: Duplicate current line
 * `yapP`: Duplicate current paragraph
 * `~`: Toggle case of current character
 * `da"`: Delete the next double-quote string
 * `ca"`: Change inside the double-quote (Use
 * `gUw`: Uppercase until end of word (<u> -> lowercase, <~> -> toggle)
 * `gUiw`: Uppercase entire word
