syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green

autocmd FileType javascript set formatprg=prettier\ --stdin

call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'beautify-web/js-beautify'
Plug 'chiel92/vim-autoformat'

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()

".vimrc
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

let g:formatterpath = ['/home/chizisch/.npm-global/bin/html-beautify', '/home/chizisch/.npm-global/bin/css-beautify', '/home/chizisch/.npm-global/bin/js-beautify']

au BufWrite * :Autoformat

let g:deoplete#enable_at_startup = 1
