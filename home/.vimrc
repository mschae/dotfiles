scriptencoding utf-8
set encoding=utf-8

" Automatically broadcast changes to this file to all active vim instances
if has("autocmd")
  " Apply changes to vimconfig automatically
  autocmd BufWritePost .vimrc source ~/.vimrc
  autocmd BufWritePost Vundlefile source ~/.vim/Vundlefile
  autocmd BufWritePost mappings.vim source ~/.vim/mappings.vim

  " Automatically delete trailing whitespaces
  autocmd BufWritePre * :%s/\s\+$//e

  " Load Nerdtree upon opening vim
  autocmd vimenter * NERDTree

  " Toggle between relative and absolute line numbering
  autocmd FocusLost * :set number
  autocmd FocusGained * :set relativenumber

  autocmd InsertEnter * :set number
  autocmd InsertLeave * :set relativenumber

endif

" Default to relative line numbering
set relativenumber

" Be diligent about the 80 column rule
match ErrorMsg '\%>80v.\+'
set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

let NERDTreeShowHidden=1

set listchars=nbsp:¬,extends:»,precedes:«,trail:•

set bs=2

let mapleader = ','

set nocompatible      " Do not be compatible with Vi - be iMproved
set number
set ruler             " Enable the bar that shows you in which position your cursor is within the file
set laststatus=2      " Always show status bar

" Whitespace stuff
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
if exists("&undodir")
  set undodir=~/.vim/undo
endif
set noswapfile

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

let g:syntastic_check_on_open=1
let g:syntastic_error_symbol='x'
let g:syntastic_warning_symbol='!'
let g:syntastic_ruby_checkers=['mri', 'rubocop']


let g:tagbar_ctags_bin='/opt/boxen/homebrew/bin/ctags'

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
