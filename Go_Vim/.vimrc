syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green

" Vundle Config
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'


call vundle#end()            " required
filetype plugin indent on    " required

" Fatih config
let g:go_fmt_command = "goimports"     " Run goimports along gofmt on each save    
let g:go_auto_type_info = 1               
" au filetype go inoremap <buffer> . .<C-x><C-o> : Automatically have
" autocomplete when writing a '.'

