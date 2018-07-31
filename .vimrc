scriptencoding utf-8
set encoding=utf-8

" Automatically broadcast changes to this file to all active vim instances
if has("autocmd")
  " Check for errros
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

" Core stuff
set nocompatible      " Do not be compatible with Vi - be iMproved
set number
set ruler             " Enable the bar that shows you in which position your cursor is within the file
set laststatus=2      " Always show status bar

" Default to relative line numbering
set relativenumber

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
if exists("&undodir")
  set undodir=~/.vim/undo
endif
set noswapfile

" Mouse support
if has("mouse")
  set mouse=a
endif

" Be diligent about the 80 column rule
match ErrorMsg '\%>80v.\+'
set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

let NERDTreeShowHidden=1

set list listchars=tab:»·,trail:·

set bs=2

let mapleader = ','

" Searching
set incsearch
set ignorecase
set smartcase

" Use vundle
source ~/.vim/Bundlefile.vim
source ~/.vim/mappings.vim

set guifont=Inconsolata-dz\ for\ Powerline:h11

try
  color solarized
  set background=dark
catch
endtry

let g:airline_powerline_fonts=1
let g:airline_theme='solarized'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:gutentags_cache_dir = '~/.tags_cache'

" Spaces & Tabs
set tabstop=2
set shiftwidth=2
set expandtab

filetype plugin indent on

if has('nvim')
  " deoplete
  let g:deoplete#auto_complete_start_length = 1
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#enable_smart_case = 1

  imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
        \ "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><C-h>
        \ deolete#mappings#smart_close_popup()."\<C-h>"
  inoremap <expr><BS>
        \ deoplete#mappings#smart_close_popup()."\<C-h>"
  set completeopt+=noinsert
  inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


  " neosnippet
  imap <C-k> <Plug>(neosnippet_expand_or_jump)
  smap <C-k> <Plug>(neosnippet_expand_or_jump)
  xmap <C-k> <Plug>(neosnippet_expand_target)
  let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets, ~/.vim/snippets'
end

let g:neomake_verbose=1
