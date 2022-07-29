syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent


set number

" color column on the right
set colorcolumn=80 
set mouse=a
set wrap 
" turn off hghlighted search words 
set nohlsearch
set noerrorbells
set smartcase
set ignorecase

" dont ceate swapfies
set noswapfile

" highligh as you type whilst searching
set incsearch 

set scrolloff=8
" column on the left for pointing errors and stuff
set signcolumn=yes

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'morhertz/gruvbox'
call plug#end()
colorscheme gruvbox
