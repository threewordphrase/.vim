"
" Deoplete for autocomplete (neovim)
"
let deoplete#tag#cache_limit_size = 10000000
inoremap <expr><Tab> pumvisible() ? "\<C-n><C-y>" : "\<Tab>"
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list=20

let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
