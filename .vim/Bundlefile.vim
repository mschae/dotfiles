call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
end

" Core stuff
"
Plug 'tpope/vim-dispatch'
Plug 'Chiel92/vim-autoformat'        " Automatic formats

Plug '/usr/local/opt/fzf'            " Fuzzy finder
Plug 'junegunn/fzf.vim'

" Navigation
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/camelcasemotion'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rizzatti/dash.vim'
Plug 'FooSoft/vim-argwrap'

" Visualization
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Language specifics
Plug 'sheerun/vim-polyglot',
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
Plug 'tpope/vim-projectionist'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" Various
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'ciaranm/detectindent'
Plug 'neomake/neomake'
Plug 'christianrondeau/vim-base64'

call plug#end()
