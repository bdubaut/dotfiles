
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
let g:lightline={}
let g:lightline.colorscheme='gruvbox'



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
  
au VimEnter *  NERDTree

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


