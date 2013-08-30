" =============================================================================
" 		                 		  - VIMRC -
" =============================================================================


" =============================================================================
" APPEARANCE
" =============================================================================
set background=dark

if &t_Co >= 256
	colorscheme wombat256mod
else
	colorscheme koehler
endif

let g:NERDTreeWinSize=25

" =============================================================================
" GENERAL SETTINGS
" =============================================================================
" set ofu=syntaxcomplete#Complete
set history=1000
set undolevels=1000
set undoreload=10000
set nobackup
set noswapfile
set nocp
set title
set hlsearch
set viewoptions=folds,options,cursor,unix,slash
set virtualedit=onemore
set laststatus=2
set encoding=utf-8
set cindent
set autoindent
set shiftwidth=4
set tabstop=4
set number
set colorcolumn=80

if has('x') && has('gui')
    set clipboard=unnamedplus
endif

" =============================================================================
" SHORTCUTS
" =============================================================================

" =============================================================================
" VUNDLE
" =============================================================================
syntax on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" Github repos
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'jdonaldson/vaxe'
" Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tcomment_vim'
Bundle 'Shougo/neocomplcache'
Bundle 'ervandew/supertab'
Bundle 'tomtom/tlib_vim'
Bundle 'Rip-Rip/clang_complete'
Bundle 'msanders/snipmate.vim'
Bundle 'myhere/vim-nodejs-complete'

filetype on
filetype plugin on
filetype plugin indent on
