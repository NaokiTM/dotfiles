# Dotfiles  

## About: 
- my dotfiles are managed using git + stow, and is used for customization of: i3-gaps wm, picom compositor, rofi (as a replacement for dmenu), polybar, fastfetch, feh for the wallpaper, kitty terminal and neovim with lazyvim (occasionally). 

## To replicate my setup: 
- to replicate, clone dotfiles to your home directory and run the stow command create symlinks in the home directory to point to your new dotfiles folder: 
```
cd dotfiles
stow */
```
- To undo all stowing (while still in the dotfiles directory) run: ```` stow -D */ ````
- Installing all the programs listed below means that there won't be missing dependencies, so should be done to avoid things breaking. 

## Installing stuff: 
- To use images as logos in fastfetch, we need to install kitty since other terminals don't always support images, and also Imagemagick to allow for images to be generated. 

### pokeget (for fastfetch logo): 
- install cargo, then run ````cargo install pokeget```` to install pokeget. Add the lines ```` pokeget random --hide-name | fastfetch --file-raw - || fastfetch ```` and ```` export PATH="$HOME/.cargo/bin:$PATH" ```` to .bashrc, and reload the terminal by running ````source ~/.bashrc ````

### Nerd fonts (for polybar statuses): 
- Download the ttf file from: [https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/FiraCodeNerdFontMono-Regular.ttf]
- Move the file to ```` ~/.local/share/fonts/ ````

