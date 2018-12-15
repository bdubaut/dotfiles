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
Bundle 'junegunn/fzf.vim'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'shime/vim-livedown'
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

" Colors
" Bundle 'croaky/vim-colors-github'
Bundle 'flazz/vim-colorschemes'
Bundle 'acarapetis/vim-colors-github'
Bundle 'altercation/vim-colors-solarized'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'morhetz/gruvbox'
Bundle 'vim-scripts/wombat256.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'archseer/colibri.vim'
Bundle 'dracula/vim'
Bundle 'sonph/onehalf', {'rtp': 'vim/'}
Bundle 'arcticicestudio/nord-vim'

" Visual
Bundle 'airblade/vim-gitgutter.git'
Bundle 'itchyny/lightline.vim'
Bundle 'junegunn/limelight.vim'
Bundle 'junegunn/goyo.vim'

" Language
Bundle 'toml-lang/toml'
Bundle 'cespare/vim-toml'
Bundle 'dm1try/ilexir'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'elzr/vim-json'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leafgarland/typescript-vim'
Bundle 'mhinz/vim-mix-format'
Bundle 'mxw/vim-jsx'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'plasticboy/vim-markdown'
Bundle 'posva/vim-vue'
Bundle 'rust-lang/rust.vim'
Bundle 'slashmili/alchemist.vim'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'w0rp/ale'

let g:vim_markdown_initial_foldlevel=99
let g:mix_format_on_save = 1
let g:mix_format_options = '--check-equivalent'

" Comments
Bundle 'tomtom/tcomment_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
