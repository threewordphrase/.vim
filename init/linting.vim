
"
"
" Neomake Config (linting)
"
"
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_python_enabled_makers = ['pylint']
let g:neomake_warning_sign = {
  \ 'text': '!',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': '✗',
  \ 'texthl': 'ErrorMsg',
  \ }

let g:neomake_javascript_eslint_maker = {
        \ 'exec': $PWD . '/node_modules/.bin/eslint'
        \ }

" disable virtualtext errors
let g:neomake_virtualtext_current_error=0

let g:neomake_tempfile_dir = '/tmp/'
