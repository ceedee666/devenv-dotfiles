"" disable use of LSP - part of integration of CoC
" https://github.com/dense-analysis/ale#faq-coc-nvim
let g:ale_disable_lsp = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug '$HOME/Documents/development/vim-cds/'
Plug 'kassio/neoterm'
Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-test/vim-test'
Plug 'mhinz/vim-startify'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" general vim settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

colorscheme dracula

set swapfile
set dir=~/tmp

set nobackup

set ts=2
set shiftwidth=2
set softtabstop=2
set expandtab

set splitbelow
set splitright

set autoindent
set expandtab

set encoding=utf-8

set number relativenumber

set cursorline
set showmatch

set hls

let mapleader = ","

"Allow backspace over everything
set backspace=indent,eol,start

" All numbers are treated as decimal numbers
set nrformats=

" Allow to move between panes using the <C-j>, <C-k> ...
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" autocmd to automatically spellcheck MD files
autocmd FileType markdown setlocal spell


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration for fzf.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader><C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration for coc.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break
" undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['eslint'],
      \   'python': ['isort', 'black']
      \}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1 " hide helper
let g:NERDTreeIgnore = ['^node_modules$'] " ignore node_modules to increase load speed
let g:NERDTreeStatusline = '' " set to empty to use lightline

" Close window if NERDTree is the last one
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree Syntax Highlight
" Enables folder icon highlighting using exact match
let g:NERDTreeHighlightFolders = 1
" Highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1

let s:git_orange = 'F54D27'
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files


 " NERDTree Git Plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" kassio/neoterm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neoterm_default_mod = 'botright'
let g:neoterm_autoinsert = 1
let g:neoterm_autoscroll = 1
let g:neoterm_term_per_tab = 1
nnoremap <c-y> :Ttoggle<CR>
inoremap <c-y> <Esc>:Ttoggle<CR>
tnoremap <c-y> <c-\><c-n>:Ttoggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-test settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let test#python#runner = 'pytest'

" make test commands execute using neoterm
let test#strategy = "neoterm"

"keyboard short cuts
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" auto commoand to run tests automatically
augroup test
  autocmd!
  autocmd BufWrite * if test#exists() |
        \   TestFile |
        \ endif
augroup END
