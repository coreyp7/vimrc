let mapleader = " "

" General
set nocompatible
syntax on
set number " show line numbers
set relativenumber " Relative line numbers
set visualbell "blink curosr instead of beep
set showcmd " Show partial command when you type in the last line of the screen
set showmode " show the mode you’re on on the last line
set showmatch "highlight matching brace
set hlsearch " highlight all search results
set incsearch "highlight matching characters as you type
set ignorecase "Always case insensitive

" light themes
colorscheme peachpuff
"colorscheme morning
"colorscheme zellner

" dark themes
" colorscheme koehler

" Highlight show column/row of cursor
set cursorline
highlight Cursorline cterm=bold guifg=white
highlight CursorColumn ctermbg=darkgray ctermbg=Black cterm=bold guifg=white
set scrolloff=8

set colorcolumn=80 " so I know when my line is going too far

" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


set shiftwidth=4 smarttab
set expandtab
set tabstop=8 softtabstop=0

" Show line numbers in explore menu
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

