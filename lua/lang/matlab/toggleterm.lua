local function matlab_repl()
	local Terminal = require("toggleterm.terminal").Terminal
	local REPL = Terminal:new({
		cmd = "matlab -nodisplay -r \"disp('Hello World!')\"",
		direction = "float",
		-- function to run on opening the terminal
		on_open = function(term)
			vim.cmd("startinsert!")
			vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
		end,
		-- function to run on closing the terminal
		on_close = function(term)
			vim.cmd("startinsert!")
		end,
	})
	REPL:toggle()
end

return {
	"akinsho/toggleterm.nvim",
	keys = { {
		"<leader>mr",
		function()
			matlab_repl()
		end,
		desc = "Toggle the terminal",
	} },
}
