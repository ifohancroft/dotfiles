" enter the current millenium
set nocompatible

" Formatting
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
syntax on

" Visual cues
set number

" Theme
set t_Co=256
colorscheme nighted

" Misc
let &titlestring = "Vim " . expand("%:t") . " @ " . hostname()
set title
let &iconstring = "vim"
set icon

