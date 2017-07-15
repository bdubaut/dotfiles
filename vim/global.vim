" Misc. config
set backspace=indent,eol,start  " Why would I ever want backspace to not work?
set scrolloff=3                 " Start scrolling 3 lines before edge
set showmatch                   " Highlight matching brackets on entry
set laststatus=2                " Always show status line
set autoread                    " Sensibly read changed files
set showcmd                     " Display incomplete commands
set noswapfile                  " No swap files
" let &colorcolumn="80"         " Highlight column 80
autocmd InsertEnter,InsertLeave * set cul! " Toggle cursorline in insert mode.
set clipboard=unnamed

" CtrlP
let g:ctrlp_max_depth = 80
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 0
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_show_hidden = 0
let g:ctrlp_lazy_update = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX

" Indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
filetype indent on
set foldmethod=indent                      " Fold based on source indentation
set foldlevelstart=99                      " Expand all folds by default
autocmd BufWritePre * StripWhitespace

let g:airline_powerline_fonts=0
let g:airline_right_sep=''
let g:airline_left_sep=''
let g:airline#extensions#tabline#enabled = 1

" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase

" Line numbering
set number
set relativenumber

" Colors
set t_Co=256                  " I use 16-color solarized, but...
syntax enable

" let g:two_firewatch_italics=1
" colo two-firewatch
" let g:airline_theme='gruvbox' " if you have Airline installed and want the associated theme
" let g:solarized_hitrail=1     " highlight trailing whitespace
" set background=dark
call togglebg#map("<F5>")     " F5 toggles background dark/light
colorscheme Tomorrow
" colorscheme 256-grayvim
" colorscheme 1989
" colorscheme tir_black
set cursorline                  " Where am I?
hi CursorLine term=bold cterm=bold
let g:airline_theme='tomorrow'

" Ruby
let g:ruby_indent_access_modifier_style = 'outdent'
let g:ruby_indent_block_style = 'do'

" Syntastic
let g:syntastic_mode_map = { "mode": "active",  "passive_filetypes": [] }
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Typescript
let g:typescript_compiler_options = '-sourcemap'
