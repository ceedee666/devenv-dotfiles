return {
	'github/copilot.vim',
	config = function()
		vim.g.copilot_no_tab_map = true
		vim.keymap.set("i", "<c-c>", "copilot#Accept('<CR>')",
			{ expr = true, desc = 'Accept Completion (Copilot)', replace_keycodes = false })
		vim.keymap.set("i", "<c-,>", "copilot#Next()",
			{ expr = true, desc = 'Next Completion (Copilot)', replace_keycodes = false })
		vim.keymap.set("i", "<c-;>", "copilot#Prev()",
			{ expr = true, desc = 'Previous Completion (Copilot)', replace_keycodes = false })
		vim.keymap.set("n", "<leader>cp", function() vim.cmd.Copilot('panel open') end, { desc = '[C]opilot [P]anel' })
	end
}
