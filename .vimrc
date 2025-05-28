let mapleader = " "

" light themes
"colorscheme peachpuff
"colorscheme morning
"colorscheme zellner

" dark themes
colorscheme koehler

" General
set nocompatible " don't make vim compatible with vi
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

set et sts=4 sw=4 ts=4
" et  = expandtab (spaces instead of tabs)
" ts  = tabstop (the number of spaces that a tab equates to)
" sw  = shiftwidth (the number of spaces to use when indenting
"       -- or de-indenting -- a line)
" sts = softtabstop (the number of spaces to use when expanding tabs)
set smarttab

set ruler
set ai "Auto indent
set si "Smart indent

" Show line numbers in explore menu
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

" Highlight show column/row of cursor
set cursorline
highlight Cursorline cterm=bold guifg=white
highlight CursorColumn ctermbg=darkgray ctermbg=Black cterm=bold guifg=white
set scrolloff=10
set colorcolumn=80 " so I know when my line is going too far

" Set leader key
" https://stackoverflow.com/questions/446269/can-i-use-space-as-mapleader-in-vim
nnoremap <SPACE> <Nop>
let mapleader=" "

" This will save you a lot of pinky stain over the years
nnoremap ; :

" remap jj to escape in insert mode
" (l is there to move back into position)
inoremap kj <Esc>l

" Use ctrl-[hjkl] to select the active split
noremap <silent> <c-k> :wincmd k<CR>
noremap <silent> <c-j> :wincmd j<CR>
noremap <silent> <c-h> :wincmd h<CR>
noremap <silent> <c-l> :wincmd l<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Hotkeys using leader key to speed up common things
" (Try and avoid esc key as much as possible)
nnoremap <leader>tn :tabnew<CR>:Explore<CR> 
nnoremap <leader>tc :tabclose<CR> 
nnoremap <leader>w :write<CR>
nnoremap <leader>q :q<CR> 
nnoremap <leader>e :Explore<CR> 
nmap <leader>vs :vsplit<CR> :wincmd l<CR>
nmap <leader>hs :split<CR> :wincmd j<CR>


" Some stuff I don't really use but leaving here

" <Ctrl-l> redraws the screen and removes any search highlighting.
" nnoremap <silent> <C-l> :nohl<CR>

" run the Bash script by pressing F6 without leaving VIM. (?)
map <f6> :w <CR>:!bash % <CR>"

" Make wildmenu behave like bash completion. Finding commands are so easy now.
" https://stackoverflow.com/questions/1840862/favorite-minimalistic-vimrc-configuration
set wildmode=list:longest
