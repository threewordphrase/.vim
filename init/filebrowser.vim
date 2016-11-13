"
" NERDTree
"
" File tree browser
map \           :NERDTreeToggle<CR>
" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>
let NERDSpaceDelims = 1


autocmd vimenter * if !argc() | NERDTree | endif

