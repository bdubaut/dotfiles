" Misc. config
set backspace=indent,eol,start  " Why would I ever want backspace to not work?
set scrolloff=3                 " Start scrolling 3 lines before edge
set showmatch                   " Highlight matching brackets on entry
set laststatus=2                " Always show status line
set autoread                    " Sensibly read changed files
set showcmd                     " Display incomplete commands
set cursorline                  " Where am I?
set noswapfile                  " No swap files
let &colorcolumn="80"         " Highlight column 80
autocmd InsertEnter,InsertLeave * set cul! " Toggle cursorline in insert mode.

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
set background=light

" let g:solarized_hitrail=1     " highlight trailing whitespace
" call togglebg#map("<F5>")     " F5 toggles background dark/light
" colorscheme Tomorrow-Night
colorscheme solarized
hi CursorLineNr ctermfg=7     " highlght current line number

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
