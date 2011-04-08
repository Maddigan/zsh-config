# vim: fdm=marker :
bindkey '[1;5C' forward-word
bindkey '[1;5D' backward-word
bindkey '^p' history-beginning-search-backward
bindkey '^n' history-beginning-search-forward
#bindkey -s '^t' 'q cls\n'            # czyszczenie terminala
bindkey -s '^t' 'q priv; cls\n'      # tryb prywatny
#bindkey -s `tput kf1` 'q sudo -k\n'  # odebranie autoryzacji
bindkey -s `tput kf1` '^uranger\n'
bindkey -s `tput kf2` '^uacpic\n'
bindkey -s `tput kf3` 'qdload\n'
bindkey -s `tput kf4` 'qdsave\n'
bindkey -s 'w' '^uncmpcpp\n'          # MPD client
#bindkey -s 'v' 'q bindkey -v\n'    # tryb vi
#bindkey -s '' 'tmux attach'
# {{{ pairs
bindkey -s '' '[]OD'
bindkey -s ']' '{}OD'
bindkey -s '0' '()OD'
bindkey -s '`' "\`\`OD"
bindkey -s '1' "\'\'OD"
# }}}
stty -ixon

autoload edit-command-line
zle -N edit-command-line
bindkey '^Xe' edit-command-line
