# Stow
Managing `.dot` files by creating symbolic links.


# Basic Nomenclature
* `stow directory`: root directory which contains all the `stow packages`. Each package is its own subdirectory
* `stow package`: list of files and subdirectories related to a specific software
k
# Installation

## MacOS 
`brew install stow`
## Ubuntu
`sudo apt install stow`

# Flags of interest
1. Testing without action `-n`
2. Create links `-S`
3. Remove links `-D`
4. Create first links with `--adopt`  (move the files to the stow directory and then create a link)
5. Choose target `-t <target>` otherwise will use the  `<target>` =  `..`

## Explanation
Create a link from the subdirectory to the target

## Summary
* `stow -nvSt <target> <subdir>`

  So by default <target> is ~ and 

## Current Setup
  * Files Current located in `~\Repos\Dotfiles` on `github`

  * Go to directory `Repos/DotFiles`

    a. Run `stow -nvSt ~ lunarvim`



