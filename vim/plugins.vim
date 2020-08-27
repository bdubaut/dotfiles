filetype off

" Install vim-plug if not already there
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" put your plugin declarations here
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'

" Completions
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'

Plug 'Yggdroot/indentLine'

" Languages

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Elixir
Plug 'elixir-lang/vim-elixir'

" Javascript
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'

" Elm

" Rust
Plug 'rust-lang/rust.vim'

" TOML
Plug 'toml-lang/toml'
Plug 'cespare/vim-toml'

" Testing
Plug 'vim-test/vim-test'

" Git
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jonhoo/proximity-sort'
Plug 'terryma/vim-multiple-cursors'

Plug 'ekalinin/Dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'

Plug 'ryanoasis/vim-devicons'
call plug#end()
filetype plugin indent on
