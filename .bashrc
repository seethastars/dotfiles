#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom aliases
alias ls='ls --color=auto'
alias ll='ls -lah'
alias cp='cp -r'
alias grep='grep --color=auto'

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

# Default editor
export EDITOR=neovim
export VISUAL=neovim
alias vim='nvim'

# Prompt
PS1='[\u@\h \W]\$ '

# Fastfetch startup
fastfetch
