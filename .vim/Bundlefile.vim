call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
end

" Core stuff
"
Plug 'tpope/vim-dispatch'

Plug '/usr/local/opt/fzf'            " Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'

" Navigation
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/camelcasemotion'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
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
Plug 'christianrondeau/vim-base64'

call plug#end()
