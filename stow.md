# Stow
Managing `.dot` files by creating symbolic links.

# Installation

## Macos 
`brew install stow`
## Ubuntu
`sudo apt install stow`

# Flags of interest
1. Testing without action `-n`
2. Create links `-S`
3. Remove links `-D`
4. Create first links with `--adopt`  (move the files to the stow directory and then create a link)
## Explanation
Create a link from the subdirectory to the target

* `stow -nvSt <target> <subdir>`
* See `~\Repos\Dotfiles` 


