" vim-plug configuration
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


syntax on

colorscheme nord

set ts=4
set shiftwidth=4
set splitbelow
set splitright

set autoindent
set expandtab

set encoding=utf-8

set number relativenumber

set cursorline
set showmatch

set hls

" All numbers are treated as decimal numbers 
set nrformats=

" Allow to move between panes using the <C-j>, <C-k> ...
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
