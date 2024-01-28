return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	keys = {
		{
			"<leader>rr",
			function()
				require("telescope").extensions.refactoring.refactors()
			end,
		},
		desc = "Show all refactoring options",
	},
	config = function()
		require("refactoring").setup()
		-- load refactoring Telescope extension
		require("telescope").load_extension("refactoring")
	end,
}
