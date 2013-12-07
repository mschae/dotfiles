" Automatically broadcast changes to this file to all active vim instances
if has("autocmd")
  autocmd BufWritePost .vimrc source ~/.vimrc
  autocmd BufWritePost Vundlefile source ~/.vim/Vundlefile
  autocmd BufWritePost mappings.vim source ~/.vim/mappings.vim
  autocmd BufWritePre * :%s/\s\+$//e
  autocmd vimenter * NERDTree
endif

let NERDTreeShowHidden=1

set listchars=nbsp:¬,extends:»,precedes:«,trail:•

set bs=2

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

" Mouse support
if has("mouse")
  set mouse=a
  set ttymouse=xterm2
endif


source ~/.vim/Vundlefile
source ~/.vim/mappings.vim

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set guifont=Inconsolata-dz\ for\ Powerline:h11

try
  color solarized
catch
endtry

syntax on

set clipboard=unnamed

let g:syntastic_check_on_open=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

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
