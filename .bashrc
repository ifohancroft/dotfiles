if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias search='googler --url-handler dump-content google'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls --color=auto --group-directories-first'
alias diff='diff --color=auto'
PS1="[\w]\\$ "
if [[ $TERM == 'xterm-termite' ]]; then
    PROMPT_COMMAND='__vte_osc7 && echo -ne "\033]0;Termite: ${PWD/#$HOME/\~}\007"'
fi
