" Misc. config
set backspace=indent,eol,start  " Why would I ever want backspace to not work?
set scrolloff=3                 " Start scrolling 3 lines before edge
set showmatch                   " Highlight matching brackets on entry
set laststatus=2                " Always show status line
set autoread                    " Sensibly read changed files
set showcmd                     " Display incomplete commands
set noswapfile                  " No swap files
set rtp+=/usr/local/opt/fzf     " FZF config
" let &colorcolumn="80"         " Highlight column 80
autocmd InsertEnter,InsertLeave * set cul! " Toggle cursorline in insert mode.
set clipboard=unnamed

" " CtrlP
" let g:ctrlp_max_depth = 80
" let g:ctrlp_show_hidden = 1
" let g:ctrlp_max_files = 0
" let g:ctrlp_use_caching = 1
" let g:ctrlp_clear_cache_on_exit = 0
" let g:ctrlp_show_hidden = 0
" let g:ctrlp_lazy_update = 1
" set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
"
" FZF
nmap ; :Buffers<CR>
nmap <Leader>p :Files<CR>
nmap <Leader>r :Tags<CR>

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

" let g:two_firewatch_italics=1
" colo two-firewatch
" let g:airline_theme='gruvbox' " if you have Airline installed and want the associated theme
" let g:solarized_hitrail=1     " highlight trailing whitespace
set background=dark
call togglebg#map("<F5>")     " F5 toggles background dark/light
" colorscheme Tomorrow
colorscheme hybrid
" colorscheme 256-grayvim
" colorscheme 1989
" colorscheme tir_black
set cursorline                  " Where am I?
hi CursorLine term=bold cterm=bold
let g:airline_theme='jellybeans'

" Ruby
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:ruby_indent_access_modifier_style = 'outdent'
let g:ruby_indent_block_style = 'do'

" vim-rspec
let g:rspec_command = "bundle exec rspec --tty --format=doc {spec}"

" Ale linters
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title
let g:alse_completion_enabled = 1

" LightLine
let g:lightline = {
\ 'active': {
\   'left': [['mode', 'paste'], ['filename', 'modified']],
\   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
\ },
\ 'component_expand': {
\   'linter_warnings': 'LightlineLinterWarnings',
\   'linter_errors': 'LightlineLinterErrors',
\   'linter_ok': 'LightlineLinterOK'
\ },
\ 'component_type': {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error'
\ },
\ }

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

autocmd User ALELint call s:MaybeUpdateLightline()

" Update and show lightline but only if it's visible (e.g., not in Goyo)
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction

" Typescript
let g:typescript_compiler_options = '-sourcemap'
