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
set background=dark
" let g:two_firewatch_italics=1
" colo two-firewatch
" let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme
" let g:solarized_hitrail=1     " highlight trailing whitespace
call togglebg#map("<F5>")     " F5 toggles background dark/light
" colorscheme gruvbox
" colorscheme Lucius
" colorscheme hemisu
" colorscheme github
colorscheme firewatch
" LuciusDark
" colorscheme heroku
" colorscheme firewatch
" set cursorline                  " Where am I?
hi CursorLine term=bold cterm=bold
let g:airline_theme='lucius'

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
