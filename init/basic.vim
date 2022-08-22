"
"
" Various settings
"
"

set noswapfile     "fuck swap files

" indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" Normal mode navigate buffers with <tab> / <shift-tab>
nmap <tab> :bn<CR>
nmap <s-tab> :bp<CR>


set clipboard=unnamed,unnamedplus " copy to system clipboard too

set notimeout                   " No command timeout
set showcmd                     " Show typed command prefixes while waiting for operator
set mouse=a                     " Use mouse support in XTerm/iTerm.

set expandtab                   " Use soft tabs
set tabstop=2                   " Tab settings
set autoindent
set smarttab                    " Use shiftwidth to tab at line beginning
set shiftwidth=2                " Width of autoindent
set number                      " Line numbers
" set relativenumber              " + relative Line numbers = hybrid line numbers
syntax on                       " Syntax, damnit
set nowrap                      " No wrapping
set backspace=indent,eol,start " Let backspace work over anything.

set list                        " Show whitespace
set listchars=trail:·
set showmatch                   " Show matching brackets
" set hidden                      " Allow hidden, unsaved buffers
set splitright                  " Add new windows towards the right
set splitbelow                  " ... and bottom
set scrolloff=3                 " Scroll when the cursor is 3 lines from edge
set ruler
set laststatus=2                " Always show statusline

set incsearch                   " Incremental search
set history=1024                " History size
set smartcase                   " Smart case-sensitivity when searching

set autoread                    " No prompt for file changes outside Vim

set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp

set sessionoptions-=options


set hls                         " search with highlights by default
" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Write all writeable buffers when changing buffers or losing focus.
" set autowriteall                " Save when doing various buffer-switching things.
" autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.

if $TERM == 'screen-256color'
  set t_RV=[>c
endif

