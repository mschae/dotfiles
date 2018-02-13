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

set listchars=nbsp:¬,extends:»,precedes:«,trail:•

set bs=2

let mapleader = ','

" Searching
set incsearch
set ignorecase
set smartcase

" Use vundle
source ~/.vim/Vundlefile
source ~/.vim/mappings.vim

set guifont=Inconsolata-dz\ for\ Powerline:h11

try
	color solarized
	set background=dark
catch
endtry

syntax on

let g:deoplete#enable_at_startup = 1

let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
let g:airline_extensions=['branch', 'tabline', 'neomake']

let g:bufferline_echo=0

let g:gutentags_cache_dir = '~/.tags_cache'
autocmd! BufWritePost * Neomake
let g:deoplete#enable_at_startup = 1
