# -*- mode: shell-script -*-
# vim: set fdm=marker :
export PATH="/sbin:$PATH"
export PATH="/usr/sbin:$PATH"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

typeset -T C_INCLUDE_PATH c_include_path
typeset -T CPLUS_INCLUDE_PATH cplus_include_path
typeset -T LIBRARY_PATH library_path
typeset -T LD_LIBRARY_PATH ld_library_path

FPATH=$HOME/.fpath:$FPATH

typeset -U PATH PYTHONPATH C_INCLUDE_PATH CPLUS_INCLUDE_PATH LIBRARY_PATH LD_LIBRARY_PATH FPATH

export P4CONFIG=".p4config"
export P4MERGE="m4merge"

if [ -e ~/.config/ranger/rc.conf ]; then
    export RANGER_LOAD_DEFAULT_RC=FALSE
fi
