# XDG Base Directory Specification Locations

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

# Cleaning up the home directory

export CUDA_CACHE_PATH=$XDG_CACHE_HOME/cuda
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export GTK_RC_FILES=$XDG_CONFIG_HOME/gtk-1.0/gtkrc
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export HISTFILE=$XDG_STATE_HOME/bash/history
export INPUTRC=$XDG_CONFIG_HOME/readline/inputrc
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/pass
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket
export WGETRC=$XDG_CONFIG_HOME/wget/wgetrc
export LESSHISTFILE=$XDG_STATE_HOME/less/lesshst
export TEXMFHOME=$XDG_DATA_HOME/texlive/texmf
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config
export XCURSOR_PATH=${XCURSOR_PATH}:/usr/local/share/icons:/usr/share/icons:$XDG_DATA_HOME/icons
export W3M_DIR=$XDG_STATE_HOME/w3m
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc

# Configuring things

export EDITOR=vim
export HISTSIZE=-1 # Unlimited history
export PATH=$HOME/.local/bin:$PATH

