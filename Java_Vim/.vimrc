syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'chiel92/vim-autoformat'

call vundle#end()            " required
filetype plugin indent on    " required

autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:formatterpath = ['/usr/bin/astyle']
au BufWrite * :Autoformat
hi Comment ctermfg=LightBlue
set background=dark
