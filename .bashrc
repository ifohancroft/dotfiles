alias search='googler --url-handler dumpContent google'
alias dotfiles='git --git-dir=$XDG_DATA_HOME/dotfiles/ --work-tree=$HOME'
alias ls='ls --color=auto --group-directories-first'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'
alias ugly-dotfiles="ls -a | grep -v 'Assets\|.cache\|Desktop\|Music\|Public\|.config\|Documents\|Downloads\|Games\|.local\|Pictures\|Projects\|Templates\|Videos'"
alias checkSpace='ncdu'

shopt -s histappend

# Clear scrollback and reset
bind -x '"\C-k":printf "\e[2J\e[3J\e[;H"'

