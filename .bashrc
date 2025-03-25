#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Default programs
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="librewolf"

# Custom aliases
alias ls='ls --color=auto'
alias ll='ls -lah'
alias cp='cp -r'
alias grep='grep --color=auto'
alias vim='nvim'

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

# Prompt
PS1='[\u@\h \W]\$ '

# Fastfetch startup
#fastfetch
