" Automatically broadcast changes to this file to all active vim instances
if has("autocmd")
  autocmd BufWritePost .vimrc source ~/.vimrc
  autocmd BufWritePost Vundlefile source ~/.vim/Vundlefile
  autocmd BufWritePost mappings.vim source ~/.vim/mappings.vim
  autocmd BufWritePre * :%s/\s\+$//e
endif

set listchars=nbsp:¬,extends:»,precedes:«,trail:•

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
set incsearch
set ignorecase
set smartcase

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif


source ~/.vim/Vundlefile
source ~/.vim/mappings.vim

let g:Powerline_symbols = 'fancy'
set guifont=Inconsolata\ for\ Powerline:h13
colorscheme solarized

if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif
