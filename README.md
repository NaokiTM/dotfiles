# Dotfiles  

## About: 
- my dotfiles are managed using git + stow, and is used for customization of: i3-gaps wm, picom compositor, rofi (as a replacement for dmenu), polybar, fastfetch, feh for the wallpaper, kitty terminal and neovim with lazyvim (occasionally). 

## To replicate my setup: 
- to replicate, clone dotfiles to your home directory and run the stow command to create symlinks in the home directory for them to point to the new dotfiles folder: 
```
cd dotfiles
stow */
```
- To undo all stowing (while still in the dotfiles directory) run: ```` stow -D */ ````

## Installing stuff: 
- Installing all the programs listed below means that there won't be missing dependencies for the config files, so should be done to avoid things breaking. 
- Also just useful for myself for later replication when it's all in one place.
- To use images as logos in fastfetch, we need to install kitty since other terminals don't always support images, and also Imagemagick to allow for images to be generated. 

### Polybar
- A reminder to run ```` chmod +x ~/dotfiles/polybar/.config/polybar/launch.sh ```` for polybar to be able to launch. 

### pokeget (for fastfetch logo): 
- install cargo, then run ````cargo install pokeget```` to install pokeget. Add the lines ```` pokeget random --hide-name | fastfetch --file-raw - || fastfetch ```` and ```` export PATH="$HOME/.cargo/bin:$PATH" ```` to .bashrc, and reload the terminal by running ````source ~/.bashrc ````

### Nerd fonts (for polybar statuses): 
- Download the ttf file from: [https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/FiraCodeNerdFontMono-Regular.ttf]
- Move the file to ```` ~/.local/share/fonts/ ````

- also download Inter variable font from [https://rsms.me/inter/download/] for use in polybar. unzip the archive, and Move intervariable.ttf and its variants to .local/share/fonts to be able to use. 

### homebrew and oh-my-posh: 
- Download homebrew: 
``` /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ```

- Then run these in order to add brew to path: 
```
    echo >> ~/.bashrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```
- Then to install oh-my-posh run: 
```brew install jandedobbeleer/oh-my-posh/oh-my-posh```

## Misc stuff:
- To run welcome page on endeavourOS again, run ````eos-welcome --enable````, to run it only once use ````eos-welcome --once````

