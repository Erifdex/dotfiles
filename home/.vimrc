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

let g:NERDTreeWinSize=31

set cul
hi CursorLine term=none cterm=none ctermbg=3

" =============================================================================
" GENERAL SETTINGS
" =============================================================================
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
set backspace=2
set mouse=a
set autowrite

imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

if has('x') && has('gui')
    set clipboard=unnamedplus
endif

let g:formatprg_cpp = "astyle"
let g:formatprg_args_cpp = "--brackets=attach -xC79 -xL -p -U"

au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &

set tags=./tags;/

" =============================================================================
" SHORTCUTS
" =============================================================================

nmap <F2> :TagbarToggle<CR>
noremap <F3> :Autoformat<CR><CR>

map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <Leader>f :A<CR>

" =============================================================================
" YOUCOMPLETEME
" =============================================================================

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_global_extra_conf.py'
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" =============================================================================
" VUNDLE
" =============================================================================
syntax on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My Bundles here:
" Github repos
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'jdonaldson/vaxe'
Bundle 'tomtom/tcomment_vim'
Bundle 'ervandew/supertab'
Bundle 'tomtom/tlib_vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vhdirk/vim-cmake'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "Chiel92/vim-autoformat"
Bundle "majutsushi/tagbar"
Bundle "vim-scripts/a.vim"
Bundle "scrooloose/syntastic"
Bundle 'Raimondi/delimitMate'
Bundle 'marijnh/tern_for_vim'

filetype on
filetype plugin on
filetype plugin indent on
