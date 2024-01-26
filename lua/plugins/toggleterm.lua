return {
	"akinsho/toggleterm.nvim",

	config = function()
		require("toggleterm").setup({
			size = function()
				if vim.o.columns > 170 then
					return vim.o.columns * 0.3
				else
					return 15
				end
			end,
			direction = vim.o.columns > 170 and "vertical" or "horizontal",
			shade_terminals = true,
			insert_mappings = false,
			open_mapping = [[<C-x>]],
		})
	end,
}
