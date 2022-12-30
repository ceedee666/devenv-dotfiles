-- Allow to move between panes using the <C-j>, <C-k> ...
vim.keymap.set("", "<C-j>", "<C-W>j")
vim.keymap.set("", "<C-k>", "<C-W>k")
vim.keymap.set("", "<C-h>", "<C-W>h")
vim.keymap.set("", "<C-l>", "<C-W>l")

-- Allow resizing panes using <leader> <C-j>,...
vim.keymap.set("", "<leader><C-h>", "10<C-W><")
vim.keymap.set("", "<leader><C-j>", "10<C-W>+")
vim.keymap.set("", "<leader><C-k>", "10<C-W>-")
vim.keymap.set("", "<leader><C-l>", "10<C-W>>")

-- toggle spell checking
vim.keymap.set("n", "<leader>s", ":set spell!<CR>")
vim.keymap.set("n", "<leader>S", ":set spell! spelllang=de<CR>")

-- toggle nvim.tree
vim.keymap.set("", "<C-n>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>F", ":Format<CR>")

