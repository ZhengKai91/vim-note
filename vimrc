syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hlsearch
set nocompatible
set number
filetype on
set autoindent
set smartindent
set rtp+=~/.vim/bundle/Vundle.vim
"fold code
set fdm=marker

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
call vundle#end()

filetype plugin indent on

"indentLine
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
"monokai
let g:monokai_orginal = 1
let g:rehash256 = 1
"nerdtree
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>
