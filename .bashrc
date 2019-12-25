if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias search='googler --url-handler dump-content google'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls --color=auto --group-directories-first'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
if [[ $TERM == 'xterm-termite' ]]; then
    PROMPT_COMMAND='__vte_osc7 && echo -ne "\033]0;Termite: ${PWD/#$HOME/\~}\007"'
fi

# Readline (.inputrc) mode string settings, because here we can use our own variables;

pretify_prompt () {
    local current_path=$(pwd)
    local pretty_prompt=""
    local counter=1
    for directory in ${current_path//\//$'\n'}
    do
        n=$(($counter%2))
        if [[ $n -gt 0 ]]; then
            pretty_prompt="${pretty_prompt}\033[48;5;15;38;5;16;1m${directory}\033[0m\033[38;5;15m\033[0m"
        else 
            pretty_prompt="${pretty_prompt}\033[48;5;17;38;5;16;1m${directory}\033[0m\033[38;5;17m\033[0m"
        fi
        let "counter++"
    done
    if [[ -z "$pretty_prompt" ]]; then
        pretty_prompt="\033[48;5;15;38;5;16;1m/\033[0m\033[38;5;15m\033[0m"
    fi
    PS1="$pretty_prompt\$ "
}
start="\1\033["
black_foreground="38;5;16"
purple_foreground="38;5;17"
teal_foreground="38;5;15"
purple_background="48;5;17"
teal_background="48;5;15"
bold=1
end="m\2"
clear=0
bind "set vi-ins-mode-string \"${start}${black_foreground};${purple_background};${bold}${end}INSERT${start}${clear}${end}${start}${purple_foreground};${teal_background}${end}${start}${clear}${end}\""
bind "set vi-cmd-mode-string \"${start}${black_foreground};${purple_background};${bold}${end}NORMAL${start}${clear}${end}${start}${purple_foreground};${teal_background}${end}${start}${clear}${end}\""
