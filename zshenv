# -*- sh -*-
export PATH="/sbin:$PATH"
export PATH="/usr/sbin:$PATH"


export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

# Load Nix environment.
[ -e ~/.nix-profile/etc/profile.d/nix.sh ] && source ~/.nix-profile/etc/profile.d/nix.sh
[ -d /usr/share/terminfo ] && export TERMINFO=/usr/share/terminfo


# A handy array-like access to these variables.
typeset -T C_INCLUDE_PATH c_include_path
typeset -T CPLUS_INCLUDE_PATH cplus_include_path
typeset -T LIBRARY_PATH library_path
typeset -T LD_LIBRARY_PATH ld_library_path
typeset -T PYTHONPATH pythonpath

FPATH=$HOME/.fpath:$FPATH

typeset -U PATH PYTHONPATH C_INCLUDE_PATH CPLUS_INCLUDE_PATH LIBRARY_PATH LD_LIBRARY_PATH FPATH

source /etc/profile.d/nix.sh
source /etc/profile.d/nix-daemon.sh

if (( $+commands[e] && $+commands[emacsclient] )) ; then
    export EDITOR=e # Emacs wrapper necessary because of the broken word splitting in some programs
else
    export EDITOR=vim
fi
export VISUAL=$EDITOR
export ALTERNATE_EDITOR="nano"
if [ -x /usr/bin/emacsclient ]; then
    export SUDO_EDITOR="/usr/bin/emacsclient -c -a nano"
else
    export SUDO_EDITOR="nano"
fi
export PAGER="less"
export TERMCMD="urxvtcd"
export DVTM_EDITOR="less"
