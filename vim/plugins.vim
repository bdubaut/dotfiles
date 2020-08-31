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
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

" Completions
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'

Plug 'Yggdroot/indentLine'

" Languages
Plug 'w0rp/ale'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'GrzegorzKozub/vim-elixirls', { 'do': ':ElixirLsCompileSync' }

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

" GraphQL
Plug 'jparise/vim-graphql'

" Testing
Plug 'vim-test/vim-test'

" Git
Plug 'tpope/vim-fugitive'
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
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
call plug#end()

