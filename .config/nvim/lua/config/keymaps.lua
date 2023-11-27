-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>bw", ":set nowrap!<cr>", { desc = "Toggle word wrap" })
vim.keymap.set("n", "<leader>bs", ":set spell! spelllang=en<cr>", { desc = "Toggle English spell checking" })
vim.keymap.set("n", "<leader>bS", ":set spell spelllang=de<cr>", { desc = "Set German spell checking" })
