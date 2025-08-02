#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

fastfetch
#neofetch logo option small or something

#Aliases
alias intellij='cd /home/naoki/Downloads/idea-IC-242.23339.11/bin/ && ./idea' 
alias flatpakintellij='flatpak run com.jetbrains.IntelliJ-IDEA-Community'
alias scenebuilder='/home/naoki/SceneBuilder/scenebuilder/bin/SceneBuilder' 
alias google='w3m google.com'
alias update='yay -Syu'


# use setwallpaper <image name> to set the wallpaper temporarily. permanent wallpaper changes need to be done in the i3 config.
setwallpaper() {
    if [ -z "$1" ]; then 
        echo "Usage: setbg <image_filename>"
    else
        feh --bg-fill ~/Pictures/"$1"
    fi
}

#even more optimised version of above. if monitor dimensions change, run this to reset the wallpaper.
alias fixwall='feh --bg-fill ~/Pictures/constellation.png'

#Define java home and path variables for java?
export JAVA_HOME=/opt/jdk-21
export PATH=$JAVA_HOME/bin:$PATH

#gets rid of trailing slash to allow home to match stuff
export HOME="${HOME%/}"


# Forces prompt colour in terminal, using my own rgb values
# PS1='\[\033[38;2;0;255;204m\]\u@\h:\w\$ \[\033[0m\]'
#PS1='\[\033[38;2;240;198;116m\]\u@\h:\w\$ \[\033[0m\]'

#light blue text colour:
#PS1='\[\033[38;2;134;181;243m\]\u@\h:\w\$ \[\033[0m\]'
PS1='\[\033[38;2;134;181;243m\]   ➜ \w \[\033[0m\]'

