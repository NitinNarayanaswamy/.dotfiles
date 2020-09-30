# bash_profile

PATH=$PATH:$HOME/.local/bin

bashrc_file="$HOME/.dotfiles/.bashrc"

if [[ -f $bashrc_file ]]; then source $bashrc_file; fi

# auto start X
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then exec startx; fi

