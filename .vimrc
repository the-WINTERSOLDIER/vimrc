let mapleader = "\<Space>"
syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

" Set Line number
set number

" color column on the right
set colorcolumn=80

" Enable mouse support
set mouse=a

" text Wrapping
set wrap 

" Turn on hghlighted search words 
set nohlsearch
set noerrorbells
set smartcase
set ignorecase

" dont ceate swapfies
set noswapfile

" highligh as you type whilst searching
set incsearch 

"hide the mode status in the lastline if airline is installed
set noshowmode

set scrolloff=8
" Plug 'Valloric/YouCompleteMe',
call plug#begin()
Plug 'ycm-core/YouCompleteMe'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'vim-scripts/DoxygenToolkit.vim', { 'tag' : '0.2.13'}
call plug#end()

colorscheme gruvbox
set background=dark
inoremap <M-Left> <C-o>:tabprevious<CR>
inoremap <M-Right> <C-o>:tabnext<CR>

" -------------------------------YCM-CONFIG-------------------------
"  CTRL-SPACE triggers autocomplete
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
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
  \   'c': ['->', '.','('],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \   're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'cpp,cuda,objcpp': ['->', '.', '::','('],
  \   'perl': ['->'],
  \   'php': ['->', '::'],
  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
  \   'ruby,rust': ['.', '::'],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }

" YCM configs
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_echo_current_diagnostic = 1
" Or, when you have vim supporting virtual text
" let g:ycm_echo_current_diagnostic = 'virtual-text'
" let g:ycm_show_diagnostics_ui = 1

" Enable Semantic Highlighting
let g:ycm_enable_semantic_highlighting=1
let g:ycm_enable_inlay_hints=1
let g:ycm_autoclose_preview_window_after_insertion = 1


" --------------------------------------LIGHTLINE CONF -----------------------
set showtabline=2
set laststatus=2
let g:lightline={'colorscheme' : 'darcula',
                \'active':{'left' :[[ 'mode', 'paste' ],
                \                  [ 'readonly'], ['filename', 'modified']],
                \          'right':[[ 'filetype', 'percent' , 'lineinfo' ]]
                \  }
                \,}
let g:lightline.tabline = {
                \ 'left': [[ 'tabs']],
                \ 'right': [[ 'close' ],[ 'bufnum']], 
                \ 'separator': { 'left': '', 'right': '' },
                \ 'subseparator': {'left': '|', 'right': '|' },
                \ }
    
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = {'left': '|', 'right': '|' }


" -----------------------------------KEYBINDINGS--------------------------
" save in insert mode and return back to insert mode
inoremap <F2> <C-O>:w<CR>
" jump to last accessed tab:             g<Tab>
inoremap <M-Left> <C-O>:tabprevious<CR>
" open a file under cursor in a new tab : <Ctrl-w>gf 

"close unmodified windows : eg help windows
noremap <F4> :q<CR>
inoremap <M-F4> <C-O>:tabclose<CR>

" Move a line up in insert mode.
inoremap <C-J>  <C-O>dd<C-O>p

" Move a line down in insert mode.
inoremap <C-K> <C-O>dd<C-O>k<C-O>P

" Toggle between header and source file
inoremap <F4> <C-O>:YcmCompleter GoToAlternateFile<CR>

" Key Bindings for DEVELOPMENT
" Assuming vim was opened in root directory of the projeckt.
inoremap <C-b> <C-O>./build.sh<CR>

" --------------SourceVIMRC--------------
inoremap <C-r> <C-O>:source ~/.vimrc<CR>

