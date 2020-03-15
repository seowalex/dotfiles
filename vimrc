call plug#begin('~/.vim/plugged')

Plug 'NLKNguyen/papercolor-theme'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

set t_Co=256
set background=dark
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
let g:lightline = { 'colorscheme': 'PaperColor' }
colorscheme PaperColor

syntax enable
filetype indent on
filetype plugin on

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent

set splitbelow
set splitright

set linebreak
set showbreak=+++
set number
set showcmd
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set noshowmode
:autocmd InsertEnter,InsertLeave * set cul!

set incsearch
set hlsearch
set ignorecase
set smartcase
