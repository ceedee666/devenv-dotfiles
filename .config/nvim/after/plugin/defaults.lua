vim.opt.relativenumber = true
vim.opt.showmatch = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.spelllang = "en_gb"

vim.o.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd(
	{ "BufRead", "BufNewFile" },
	{ pattern = { "*.txt", "*.md", "gitcommit" }, command = "setlocal spell" }
)

-- start git commit messages in insert mode
vim.api.nvim_create_augroup("bufcheck", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = "bufcheck",
	pattern = { "gitcommit", "gitrebase" },
	command = "startinsert | 1",
})

vim.o.tabstop = 4

-- disable indent blank lines for certain filetypes
require('ibl').setup {
	exclude = {
		filetypes = {'startify', 'log'}
	}
}
