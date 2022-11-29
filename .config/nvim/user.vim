set nowrap

syntax on
colorscheme dracula

set swapfile
set dir=~/.vimswap/
set nobackup

set ts=2
set shiftwidth=2
set shiftround


set splitbelow
set splitright

set autoindent
set expandtab
set softtabstop=2

set encoding=utf-8

set number relativenumber

set showmatch

set hls

let mapleader = ","
"
"Allow backspace over everything
set backspace=indent,eol,start

" All numbers are treated as decimal numbers
set nrformats=

"Enable spell checking for text and md files
set spelllang=en_gb
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell
autocmd FileType text setlocal spell
