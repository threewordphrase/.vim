
" 
" Git (Figutive)
"
"
"
map <leader>gb   :Git blame<CR>
" open line on github
map <leader>gh   :.GBrowse<CR>
" Automatically delete Fugitive buffers that are no longer being used. http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
autocmd BufReadPost fugitive://* set bufhidden=delete
" Unset 'list' in :Gstatus window (which usually contains tab characters).
autocmd BufReadPost .git/index set nolist

map <leader>gg   :GitGutterToggle<CR>

let g:fugitive_gitlab_domains = {'ssh://code.earth.planet.com': 'https://hello.planet.com/code'}
