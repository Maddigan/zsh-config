# -*- mode: shell-script -*-
# vim: set fdm=marker :
[ -z "$PS1" ] && return
unsetopt autocd beep
bindkey -e
if [ -d ~/.bin -a -z "`echo $PATH | grep '/home/vifon/\.bin'`" ]; then
    export PATH=~/.bin:"${PATH}"
fi

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
autoload -U colors && colors
compinit
# End of lines added by compinstall

autoload zmv

HISTFILE=~/.zhistory
DEF_HISTFILE=~/.zhistory
HISTSIZE=2500
SAVEHIST=2500

WORDCHARS='*?_-.[]~!#$%(){}<>'


PLUGINS_DIR=~/.zplugins
PLUGINS=(
    zcolors
    zremap
    zcompletion
    zaliases
    zscripts
    ztodo
    zpriv
    zSSH
    zXephyr
    zmancolor
    acoc
    autojump
    zCMake
    humble
    extract
    filehandlers
    syntaxhighlight
    scm_breeze
    )
if [ -f ~/.zloader ]; then
    . ~/.zloader
fi

if [ $TERM = "vt100" -o $TERM = "dumb" ]; then
    PSFILE=.zpromptlegacy.zsh
elif [ -z "$PSFILE" ]; then
    PSFILE=.zprompt
fi
if [ -f ~/$PSFILE ]; then
    . ~/$PSFILE
fi

if [ $TERM = "eterm-color" ]; then
    unset HISTFILE
fi

export EDITOR="emacsclient -c -a vim"
export ALTERNATE_EDITOR="vim"
export SUDO_EDITOR="emacsclient -c -a vim"
export BROWSER="luakit -n"
export PAGER="less"
export DROPBOXID=139016
export ACRONYMDB="/usr/share/misc/acronyms /usr/share/misc/acronyms.comp $HOME/.lib/acronyms"
setopt  hist_ignore_all_dups    \
    hist_accept_space           \
    hist_reduce_blanks          \
    append_history              \
    share_history               \
    inc_append_history          \
    hist_no_functions           \
    extended_history            \
    hist_no_store               \
    interactivecomments         \
    \
    extended_glob               \
    braceccl                    \
    longlistjobs                \
    \
    prompt_subst                \
    \
    pushd_to_home
