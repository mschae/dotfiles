call plug#begin('~/.vim/plugged')

" Core stuff
"
Plug 'tpope/vim-dispatch'
Plug 'Shougo/deoplete.nvim'
Plug 'ervandew/supertab'
Plug 'Chiel92/vim-autoformat'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Navigation
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/camelcasemotion'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'bling/vim-bufferline'
Plug 'rizzatti/dash.vim'
Plug 'FooSoft/vim-argwrap'

" Visualization
Plug 'altercation/vim-colors-solarized'
Plug 'itspriddle/ZoomWin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Language specifics
Plug 'sheerun/vim-polyglot'
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-projectionist'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Various
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'ciaranm/detectindent'
Plug 'neomake/neomake'
Plug 'christianrondeau/vim-base64'

call plug#end()
