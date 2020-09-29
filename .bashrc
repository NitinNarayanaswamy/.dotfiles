PS1='\w\$ '

# alias
alias ll='ls -alF'
alias rm='rm -rf'

# function
cd() { builtin cd "$@" && ll; }

