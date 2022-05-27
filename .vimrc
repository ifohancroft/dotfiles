" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

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
" Transparent background
hi Normal guibg=NONE ctermbg=NONE

" Misc
let &titlestring = "Vim " . expand("%:t") . " @ " . hostname()
set title
" let &iconstring = "gvim"
" set icon

"filetype plugin indent off

" Key maps
":nnoremap <Space><Space> :%s/\%.c/ /g<CR> " Insert space before cursor on all lines
:nnoremap <expr> <Space> ':%s/\%.c/'.nr2char(getchar()).'/g<CR>' " Insert the next pressed character, before the cursor on all lines
:nnoremap <BS><BS> :%s/\%.c.//g<CR> " Remove character under cursor on all lines

