set nocompatible 
filetype off      

call plug#begin()

Plug 'VundleVim/Vundle.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin indent on

set foldmethod=indent
set foldlevel=99

nnoremap <space> za

au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

au BufNewFile,BufRead *.c
    \set tabstop=4 
    \set softtabstop=4
    \set shiftwidth=4
    \set expandtab
    \set autoindent
    \set fileformat=unix

set encoding=utf-8

let python_highlight_all=1
syntax on

set clipboard=unnamed

set ve+=onemore
set nu

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
