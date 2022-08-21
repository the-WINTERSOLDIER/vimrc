:let mapleader = "\<Space>"
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
Plug 'Valloric/YouCompleteMe',
call plug#end()
colorscheme gruvbox
set background=dark
" -------------------------------YCM-CONFIG-------------------------
"  CTRL-SPACE triggers autocomplete
let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py"
set completeopt-=preview
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_error_symbol = 'e>'
let g:ycm_warning_symbol = 'w>'
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']

let g:ycm_semantic_triggers =  {
  \   'c': ['->', '.'],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \            're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'cpp,cuda,objcpp': ['->', '.', '::'],
  \   'perl': ['->'],
  \   'php': ['->', '::'],
  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
  \   'ruby,rust': ['.', '::'],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }

let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_echo_current_diagnostic = 1
" Or, when you have vim supporting virtual text
let g:ycm_echo_current_diagnostic = 'virtual-text'
let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_semantic_highlighting=1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_enable_inlay_hints = 1
