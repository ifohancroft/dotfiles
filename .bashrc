if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias search='googler --url-handler dump-content google'
alias dotfiles='git --git-dir=$XDG_DATA_HOME/dotfiles/ --work-tree=$HOME'
alias ls='ls --color=auto --group-directories-first'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'
alias weechat='weechat -d "$XDG_CONFIG_HOME"/weechat'
alias ugly-dotfiles="ls -a | grep -v 'Assets\|.cache\|Desktop\|Music\|Public\|.config\|Documents\|Downloads\|Games\|.local\|Pictures\|Projects\|Templates\|Videos'"
alias gpg2='gpg2 --homedir "$XDG_DATA_HOME"/gnupg'
alias checkSpace='ncdu'

shopt -s histappend

if [ "$TERM" = "xterm" ]; then
    PS1='echo -ne "\033]2;XTerm: ${PWD/#$HOME/\~}\233"'
fi
PS1="[\u@\h \w]\\$ "

# Clear scrollback and reset
bind -x '"\C-k":printf "\e[2J\e[3J\e[;H"'
