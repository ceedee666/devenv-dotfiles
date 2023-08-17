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


-- navigate to diagnostic message 
vim.keymap.set('n', '<leader>pm', vim.diagnostic.goto_prev, { desc = "Go to [p]revious diagnostic [m]essage" })
vim.keymap.set('n', '<leader>nm', vim.diagnostic.goto_next, { desc = "Go to [n]ext diagnostic [m]essage" })
