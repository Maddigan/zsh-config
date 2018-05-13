# -*- mode: shell-script -*-
# vim: set fdm=marker :
export PATH="/sbin:$PATH"
export PATH="/usr/sbin:$PATH"


export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

# Load Nix environment.
[ -e ~/.nix-profile/etc/profile.d/nix.sh ] && source ~/.nix-profile/etc/profile.d/nix.sh
[ -d /usr/share/terminfo ] && export TERMINFO=/usr/share/terminfo

export PATH="$HOME/.gopath/bin:$PATH"

typeset -T C_INCLUDE_PATH c_include_path
typeset -T CPLUS_INCLUDE_PATH cplus_include_path
typeset -T LIBRARY_PATH library_path
typeset -T LD_LIBRARY_PATH ld_library_path

FPATH=$HOME/.fpath:$FPATH

typeset -U PATH PYTHONPATH C_INCLUDE_PATH CPLUS_INCLUDE_PATH LIBRARY_PATH LD_LIBRARY_PATH FPATH

source /etc/profile.d/nix.sh
source /etc/profile.d/nix-daemon.sh

