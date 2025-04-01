#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Auto change directory only by typing its name
shopt -s autocd

# Default programs
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="foot"
export TERMINAL_PROG="foot"
export BROWSER="librewolf"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export HISTCONTROL=ignoredups
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/bash/history"

export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"

# Custom aliases
alias ls='ls -hN --color=auto --group-directories-first'
alias ll='ls -lhAN --color=auto --group-directories-first'
alias grep='grep --color=auto'

alias cp='cp -riv'
alias mv='mv -iv'
alias rm='rm -vI'
alias mkd='mkdir -pv'

alias vim='nvim'
alias ff='fastfetch'

# Change directory aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Aliases for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\] \[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[37m\]\\$\[\e[m\] "

# Prompt
#PS1='\u > \h \W > '
