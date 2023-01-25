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
" moar git
Plugin 'tpope/vim-rhubarb'
" Plugin 'tpope/fugitive-gitlab.vim'
Plugin 'shumphrey/fugitive-gitlab.vim'
" FZF, fuzzy finder
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" NERDCommenter
Plugin 'scrooloose/nerdcommenter'
" Navigate undo tree
Plugin 'simnalamburt/vim-mundo'
" Neomake for async linter/make runner
Plugin 'neomake/neomake'
" Tomorrow Themes
Plugin 'chriskempson/vim-tomorrow-theme'
" Color themes
Plugin 'sickill/vim-monokai'
" Multicursors
Plugin 'mg979/vim-visual-multi'
" Deoplete completion engine
Plugin 'Shougo/deoplete.nvim'
" Support for easyclip (at least...)
Plugin 'tpope/vim-repeat'
" Sane cut/delete behavior >:|
Plugin 'svermeulen/vim-easyclip'
" Ugh where the F am I
Plugin 'fholgado/minibufexpl.vim'
" Python intel
Plugin 'zchee/deoplete-jedi'
Plugin 'davidhalter/jedi-vim'
" JS Support
" Plugin 'pangloss/vim-javascript'
" JS intel
Plugin 'ternjs/tern_for_vim'
" JS deoplete
Plugin 'carlitux/deoplete-ternjs'
" GitGutter
Plugin 'airblade/vim-gitgutter.git'
" Formatting
Plugin 'sbdchd/neoformat'
" Surround
Plugin 'tpope/vim-surround'
" Use local node_modules bin
Plugin 'benjie/local-npm-bin.vim'
" Auto pairing
Plugin 'jiangmiao/auto-pairs'
" .tsx highlighting and syntax
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
" Kill buffers, keep split
Plugin 'mhinz/vim-sayonara'
" Universal-ish syntax highlighting
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" set background=dark
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
"
" Mundo settings
let g:mundo_right = 1
nmap <leader>u :MundoToggle<CR>

" Load local config if present
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

" Load init/ directory
for s:fpath in split(globpath($HOME . '/.vim/init', '*.vim'), '\n')
  exe 'source' s:fpath
endfor

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
hi StatusLineNC ctermfg=177 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

hi MBEVisibleChangedActive guifg=#FFFFFF guibg=#FFFFFF
hi MBEVisibleChanged guifg=#F1266F guibg=fg
hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
hi MBEChanged guifg=#CD5907 guibg=fg
hi MBENormal guifg=#808080 guibg=fg

hi MBEVisibleActive ctermfg=15 ctermbg=239

set guicursor=

set backupdir=/tmp
