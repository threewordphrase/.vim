
"
"
" Neomake Config (linting)
"
"
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_warning_sign = {
  \ 'text': '!',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': '✗',
  \ 'texthl': 'ErrorMsg',
  \ }

" disable virtualtext errors
let g:neomake_virtualtext_current_error=0
