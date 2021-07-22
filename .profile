export EDITOR=vim
export GTK_RC_FILES=$XDG_CONFIG_HOME/gtk-1.0/gtkrc
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export PATH=$HOME/.local/bin:$PATH
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export CUDA_CACHE_PATH=$XDG_CACHE_HOME/nv
export JAVA_OPTIONS=-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java
export LESSKEY=$XDG_CONFIG_HOME/less/lesskey
export LESSHISTFILE=$XDG_CACHE_HOME/less/history
export ICEAUTHORITY=$XDG_CACHE_HOME/ICEauthority
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export INPUTRC=$XDG_CONFIG_HOME/readline/inputrc
export HISTFILE=$XDG_DATA_HOME/bash/history
export HISTSIZE=10000
export HISTFILESIZE=10000
export TASKDATA=$XDG_DATA_HOME/task
export TASKRC=$XDG_CONFIG_HOME/task/taskrc
export VIT_DIR=$XDG_CONFIG_HOME/vit
export WGETRC=$XDG_CONFIG_HOME/wgetrc
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/pass
eval "$(dircolors $XDG_CONFIG_HOME/dircolors)"
#eval "$(dircolors)"

