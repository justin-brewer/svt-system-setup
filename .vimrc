"call plug#begin('~/.vim/plugged')
"	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"	Plug 'dense-analysis/ale'
"call plug#end()

set number
set autoindent
set ignorecase
syntax enable
set cursorline

"colorscheme monokai

inoremap jk <Esc>

set expandtab
set shiftwidth=4
set tabstop=4
set smartindent

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
