return {
	"BalderHolst/matlab.nvim",
	ft = "matlab",
	keys = {
		{
			"<leader>mf",

			function()
				require("matlab").evaluate_current_file()
			end,
			desc = "Evaluate currently opened matlab script",
		},
		{
			"<leader>mb",
			function()
				require("matlab").evaluate_block()
			end,
			desc = "Evaluate the matlab block under cursor",
		},
		{
			"<leader>mv",
			function()
				require("matlab").evaluate_visual()
			end,
			desc = "Evaluate the matlab highlighted text",
		},
		{
			"<leader>md",
			function()
				require("matlab").open_documentation_at_cursor()
			end,
			desc = "Open matlab documentation at cursor",
		},
		{
			"<leader>mw",
			function()
				require("matlab").open_workspace()
			end,
			desc = "Open matlab variable explorer",
		},
	},

	opts = {
		splash = false,
	},

	config = function(_, opts)
		require("matlab").setup(opts)
	end,
}
