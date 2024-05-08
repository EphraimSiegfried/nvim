-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local function map(mode, lhs, rhs, opts)
	-- set default value if not specify
	if opts.noremap == nil then
		opts.noremap = true
	end
	if opts.silent == nil then
		opts.silent = true
	end

	vim.keymap.set(mode, lhs, rhs, opts)
end

---------------------
-- General Keymaps -------------------

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true })

-- faster vertical movement
map("n", "<C-u>", "<C-u>zz", {})
map("n", "<C-d>", "<C-d>zz", {})
map("n", "<C-b>", "<C-b>zz", {})
map("n", "<C-f>", "<C-f>zz", {})

-- Jump to previous buffer/position
map("n", "H", "<C-o>", {})
map("n", "L", "<C-o>", {})

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

map("n", "M", function()
	local search_term = vim.fn.expand("<cword>")
	local ok = pcall(vim.cmd, ":vertical Man " .. search_term)
	if not ok then
		vim.api.nvim_notify("No man entry for " .. search_term, vim.log.levels.ERROR, {})
	end
end, { desc = "Open man page for word under cursor" })
