" set font and size
set guifont=Droid\ Sans\ Mono:h11
set linespace=8
" bug where gnvim didn't detect . as opening a file
" autocmd vimenter * if !argc() | NERDTree | endif
set cursorline
set guioptions-=T               " Remove GUI toolbar
set guioptions-=e               " Use text tab bar, not GUI
set guioptions-=rL              " Remove scrollbars
set guicursor=a:blinkon0        " Turn off the blinking cursor
