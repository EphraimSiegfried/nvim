return {
	{
		"L3MON4D3/LuaSnip",
		config = function()
			require("luasnip").config.set_config({
				history = false,
				enable_autosnippets = true,
				store_selection_keys = "<Tab>",
				region_check_events = "InsertEnter",
				delete_check_events = "InsertLeave",
				-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
				require("luasnip.loaders.from_vscode").lazy_load({
					include = { "lua", "markdown", "md", "python", "c", "typescript", "javascript", "react" },
				}),
				require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" }),
			})
		end,
	},
	{
		"rafamadriz/friendly-snippets",
	},
	{
		"iurimateus/luasnip-latex-snippets.nvim",
		ft = { "latex", "tex" },
		requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
		config = true,
	},
	{
		"benfowler/telescope-luasnip.nvim",
		config = true,
	},
}
