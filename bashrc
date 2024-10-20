#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lah'
alias cp='cp -r'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias vim='nvim'
alias mkdir='mkdir -p'
alias grep='grep --color=auto'

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

PS1='[\u@\h \W]\$ '

# Fastfetch startup
fastfetch

# Nerfetch
# nerdfetch

# Starship startup
eval "$(starship init bash)"

# Created by `pipx` on 2024-09-30 14:56:38
export PATH="$PATH:/home/seethestars/.local/bin"
