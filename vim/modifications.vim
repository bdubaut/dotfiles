
" ================================================
" Configuration modifications
" ================================================
autocmd vimenter * colorscheme gruvbox

" F5 toggles background dark/light
call togglebg#map("<F5>")


filetype plugin indent on




" ================================================
" LIGTHLINE MODIFICATIONS 
" ================================================

let g:lightline = {
  'colorscheme': 'gruvbox',
  'separator': { 'left': "\u2b80", 'right': "\u2b82" },
  'subseparator': { 'left': "\u2b81", 'right': "\u2b83" },
  'active': {
    'left': [
      [ 'mode', 'paste' ],
      [ 'fugitive', 'filename' ]
    ]
  },
  'component_function': {
    'fugitive': 'LightlineFugitive',
    'readonly': 'LightlineReadonly',
    'modified': 'LightlineModified',
    'filename': 'LightlineFilename'
    }
  }

function! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightlineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# ''  ? "\u2b60 " . branch : ''
  endif
  return ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
  ('' != expand('%:t') ? WebDevIconsGetFileTypeSymbol() . ' ' . expand('%:t') : '[No Name]') .
  ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction





" ================================================
" NERDTREE MODIFICATIONS 
" ================================================

function! ToggleNerdTree()
  if (exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1 || bufname('%') == '' )
    NERDTreeToggle
  else
    NERDTreeFind
    hi! link Conceal Normal
  endif
endfunction

function! SyncNerdTree() 
  if (bufname('%') !~# 'NERD_tree_')
    IndentLinesEnable
    if exists("g:NERDTree") && g:NERDTree.IsOpen()
      NERDTreeToggle
    endif
  else
    IndentLinesDisable
  endif
  hi! link Conceal Normal
endfunction

" Shows NERDTree on start and synchronizes the tree with opened file when switching between opened windows
autocmd BufEnter * silent! call SyncNerdTree()

autocmd BufEnter * if bufname('%') =~ 'NERD_tree_' | nnoremap <silent> <Esc><Esc> :call ToggleNerdTree()<CR> | endif
autocmd BufEnter * if bufname('%') !~# 'NERD_tree_' | nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc> | endif


" Automatically close vim if only NERDTree left
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  
" Focus on opened view after starting (instead of NERDTree)
au VimEnter * :wincmd w

nnoremap <silent> <C-\> :call ToggleNerdTree()<CR>
" Prevent this command activation in NERDTree

let g:NERDTreeWinPos = "left"
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

let g:WebDevIconsUnicodeDecorateFolderNodes = 1 
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:webdevicons_conceal_nerdtree_brackets = 1


