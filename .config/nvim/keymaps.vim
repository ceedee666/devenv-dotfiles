" Allow to move between panes using the <C-j>, <C-k> ...
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Allow to rezies panes using <C-J>, <C-K>...
map <leader><C-h> 10<C-W><
map <leader><C-j> 10<C-W>+
map <leader><C-k> 10<C-W>-
map <leader><C-l> 10<C-W>>

" Allow to move between panes using the <C-j>, <C-k> in terminal mode
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

tnoremap <Esc> <C-\><C-n>

"shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>

"shortcut for neoformat
nnoremap <leader>F :Neoformat<CR>

"shortcuts for code completion
inoremap <C-space> <C-x><C-o>

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
