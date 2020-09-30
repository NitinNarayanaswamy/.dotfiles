# bashrc

# If not running interactively, don't do anything
if [[ $- != *i* ]]; then return; fi

PS1='\w\$ '

# alias
#alias ls='ls --color=auto'
alias ll='ls -alF'
alias rm='rm -rf'

# function
cd() { builtin cd "$@" && ll; }

