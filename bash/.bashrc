# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias intellij='/opt/idea-IU-252.23892.409/bin/idea.sh'
alias n='nnn -a'
alias roblox='flatpak run org.vinegarhq.Sober'


PS1='\[\033[38;2;134;181;243m\]   ➜ \w \[\033[0m\]'

#export PS1="\[$(tput setaf 243)\]\u\[$(tput setaf 245)\]@\[$(tput setaf 249)\]\h \[$(tput setaf 254)\]\w \[$(tput sgr0)\]$ "
#export PS1="\[\e[38;5;243m\]\u\[\e[38;5;245m\]@\[\e[38;5;249m\]\h \[\e[38;5;254m\]\w \[\033[0m\]$ "


#export PS1="\[$(tput setaf 196)\]\u\[$(tput setaf 202)\]@\[$(tput setaf 208)\]\h \[$(tput setaf 220)\]\w \[$(tput sgr0)\]$ "
#export PS1="\[\e[38;5;196m\]\u\[\e[38;5;202m\]@\[\e[38;5;208m\]\h \[\e[38;5;220m\]\w \[\033[0m\]$ "

export PATH="$HOME/.cargo/bin:$PATH"

#pokeget --mega-x charizard --hide-name | fastfetch --file-raw - || fastfetch
pokeget random --hide-name | fastfetch --file-raw - || fastfetch