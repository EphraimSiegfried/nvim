vim.api.nvim_create_autocmd({ "BufReadPost" }, {
	desc = "Open file at the last position it was opened",
	pattern = "*",
	command = 'silent! normal! g`"zv',
})
