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
4. Create first links with `--adopt` 
## Explanation
Create a link from the subdirectory to the target

* `stow -nvS <target> <subdir>`
* See `~\Repos\Dotfiles` 


