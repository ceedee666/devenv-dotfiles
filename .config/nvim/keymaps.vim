" Allow to move between panes using the <C-j>, <C-k> ...
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>

"shortcut for neoformat
nnoremap <leader>F :Neoformat<CR>

"shortcuts for code completion
inoremap <C-space> <C-x><C-o>

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
