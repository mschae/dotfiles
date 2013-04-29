" Automatically broadcast changes to this file to all active vim instances
if has("autocmd")
  autocmd bufwritepost .vimrc source ~/.vimrc
endif

let mapleader = ','

set nocompatible      " Do not be compatible with Vi - be iMproved
set number
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


source ~/.vim/Vundlefile
source ~/.vim/mappings.vim

let g:Powerline_symbols = 'fancy'
set guifont=Inconsolata\ for\ Powerline:h13
colorscheme solarized

