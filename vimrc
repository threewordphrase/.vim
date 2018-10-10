set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" NERDTree
Plugin 'scrooloose/nerdtree'
" Git integration
Plugin 'tpope/vim-fugitive'
" FZF, fuzzy finder
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" NERDCommenter
Plugin 'scrooloose/nerdcommenter'
" Navigate undo tree
Plugin 'sjl/gundo.vim'
" Neomake for async linter/make runner
Plugin 'neomake/neomake'
" Tomorrow Themes
Plugin 'chriskempson/vim-tomorrow-theme'
" Monokai color theme
Plugin 'sickill/vim-monokai'
" Multicursors
Plugin 'terryma/vim-multiple-cursors'
" Gutentags for sane ctags management
Plugin 'ludovicchabant/vim-gutentags'
" Deoplete completion engine
Plugin 'Shougo/deoplete.nvim'
" Support for easyclip (at least...)
Plugin 'tpope/vim-repeat'
" Sane cut/delete behavior >:|
Plugin 'svermeulen/vim-easyclip'
" Unite! Unite! Okay!
Plugin 'Shougo/denite.nvim'
" Ugh where the F am I
Plugin 'fholgado/minibufexpl.vim'
" Python deoplete
Plugin 'zchee/deoplete-jedi'
" JS deoplete
Plugin 'carlitux/deoplete-ternjs'
" GitGutter
Plugin 'airblade/vim-gitgutter.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
colorscheme monokai

" flesh out ctags (see autoload/tags.vim)
" -- probably need to add language
" -- and new tag files, like this tags+=gems.tags

" ctrl to go to EOL on delete or arrow?

let mapleader = ","
let maplocalleader = ";"

" window
nmap <leader>sw<left>  :topleft  vnew<CR>
nmap <leader>sw<right> :botright vnew<CR>
nmap <leader>sw<up>    :topleft  new<CR>
nmap <leader>sw<down>  :botright new<CR>
" buffer
nmap <leader>sb<left>   :leftabove  vnew<CR>
nmap <leader>sb<right>  :rightbelow vnew<CR>
nmap <leader>sb<up>     :leftabove  new<CR>
nmap <leader>sb<down>   :rightbelow new<CR>
" Selection and indentation

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

" Load init/ directory
runtime! init/**.vim

if exists('g:nyaovim_version')
    source ~/.gvimrc
endif

" gvim/mvim/gnvim rc file
if has('gui_running')
    source ~/.gvimrc
endif
" ugh wat?
if exists("neovim_dot_app")
  source ~/.gvimrc
end


hi StatusLine   ctermfg=232  guifg=#080808 ctermbg=252 guibg=#d0d0d0 cterm=bold gui=bold
" hi StatusLineNC ctermfg=177 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

hi MBEVisibleChangedActive guifg=#FFFFFF guibg=#FFFFFF
hi MBEVisibleChanged guifg=#F1266F guibg=fg
hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
hi MBEChanged guifg=#CD5907 guibg=fg
hi MBENormal guifg=#808080 guibg=fg

hi MBEVisibleActive ctermfg=15 ctermbg=239
