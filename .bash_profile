# bash_profile

PATH=$PATH:$HOME/.local/bin

BASHRC_FILE="$HOME/.dotfiles/.bashrc"

if [[ -f $BASHRC_FILE ]]; then source "$BASHRC_FILE"; fi

# auto start X
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then exec startx; fi

