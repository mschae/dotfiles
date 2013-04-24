" Automatically broadcast changes to this file to all active vim instances
if has("autocmd")
  autocmd bufwritepost .vimrc source ~/.vimrc
endif

let mapleader = ','

set nocompatible      " Do not be compatible with Vi - be iMproved

set ruler             " Enable the bar that shows you in which position your cursor is within the file
set laststatus=2      " Always show status bar

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Turn off backups (Vim's *.swp files)
set nobackup
set nowritebackup

" Shortcuts for switching windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

source ~/.vim/Vundlefile
source ~/.vim/mappings.vim

colorscheme solarized

" Plugin settings
let g:vundle_default_git_proto = 'git'

