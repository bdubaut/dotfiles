set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Misc
Bundle 'AndrewRadev/linediff.vim'
Bundle 'ConradIrwin/vim-bracketed-paste'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'shime/vim-livedown'
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

" Colors
Bundle 'jonathanfilip/vim-lucius'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/wombat256.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'morhetz/gruvbox'
Bundle 'rakr/vim-two-firewatch'
Bundle 'rakr/vim-one'
Bundle 'mvader/vim-firewatch'
Bundle 'noahfrederick/vim-hemisu'
" Bundle 'croaky/vim-colors-github'
Bundle 'acarapetis/vim-colors-github'
" Bundle 'flazz/vim-colorschemes'

" Visual
let g:airline_powerline_fonts = 1
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'airblade/vim-gitgutter.git'

" Language
Bundle 'elixir-lang/vim-elixir'
Bundle 'elzr/vim-json'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'leafgarland/typescript-vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'thoughtbot/vim-rspec.git'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/syntastic'

let g:vim_markdown_initial_foldlevel=99

" Comments
Bundle 'tomtom/tcomment_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
