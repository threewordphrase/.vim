"
" NERDTree
"
" File tree browser
map \           :NERDTreeToggle<CR>
" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>
let NERDSpaceDelims = 1

"Close when opening a file
let g:NERDTreeQuitOnOpen = 1
" autocmd vimenter * if !argc() | NERDTree | endif

let g:NERDTreeShowHidden=1
