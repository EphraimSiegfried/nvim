return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "nvim-navic" },
	opts = {
		winbar = {
			lualine_c = {
				{
					function()
						return require("nvim-navic").get_location()
					end,
					cond = function()
						return require("nvim-navic").is_available()
					end,
				},
			},
		},
	},
	config = function(_, opts)
		require("lualine").setup(opts)
	end,
}
