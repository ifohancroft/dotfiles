alias nvidia-settings='nvidia-settings --config=$XDG_CONFIG_HOME/nvidia/settings'
alias search='googler --url-handler dumpContent google'
alias dotfiles='git --git-dir=$XDG_DATA_HOME/dotfiles/ --work-tree=$HOME'
alias ls='ls --color=auto --group-directories-first'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ugly-dotfiles="ls -a | grep -v '.cache\|Desktop\|Music\|Public\|.config\|Documents\|Downloads\|Games\|.local\|Pictures\|Projects\|Templates\|Videos'"
alias checkSpace='ncdu'
alias mutt='xseticon -id "$(xdotool getactivewindow)" $XDG_DATA_HOME/icons/hicolor/32x32/apps/mutt.png && mutt && xseticon -id "$(xdotool getactivewindow)" /usr/share/icons/mate/32x32/apps/utilities-terminal.png'
alias c64='x64sc'
alias c64dtv='x64dtv'
alias c128='x128'
alias pet='xpet'
alias vic20='xvic'
#alias ncmpcpp='xseticon -id "$(xdotool getactivewindow)" $XDG_DATA_HOME/icons/hicolor/32x32/apps/mpd.png && ncmpcpp && xseticon -id "$(xdotool getactivewindow)" /usr/share/iocns/mate/32x32/apps/utilities-terminal.png'
alias pip='function _pip(){
    if [ $1 = "search" ]; then
        pip_search "$2";
    else pip "$@";
    fi;
};_pip'

shopt -s histappend

# Clear scrollback and reset
bind -x '"\C-k":printf "\e[2J\e[3J\e[;H"'

ix() {
    local opts
    local OPTIND
    [ -f "$HOME/.netrc" ] && opts='-n'
    while getopts ":hd:i:n:" x; do
        case $x in
            h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;;
            d) $echo curl $opts -X DELETE ix.io/$OPTARG; return;;
            i) opts="$opts -X PUT"; local id="$OPTARG";;
            n) opts="$opts -F read:1=$OPTARG";;
        esac
    done
    shift $(($OPTIND - 1))
    [ -t 0 ] && {
        local filename="$1"
        shift
        [ "$filename" ] && {
            curl $opts -F f:1=@"$filename" $* ix.io/$id
            return
        }
        echo "^C to cancel, ^D to send."
    }
    curl $opts -F f:1='<-' $* ix.io/$id
}

cc () {
    inputfile=$1
    path=$(dirname ${inputfile})
    file=$(basename ${inputfile})
    # Filename without an extension. I.e. Optional first dot character, then every character up until we encounter a dot again
    [[ $file =~ ^\.?[^.]* ]]; filename="$BASH_REMATCH"
    gcc -ansi -pedantic -Wall -Wextra -fno-builtin $inputfile -o $path/$filename
}

