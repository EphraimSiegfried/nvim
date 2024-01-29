return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		opts = { -- enable syntax highlighting
			highlight = {
				enable = true,
				-- Mathzones are recognized with VimTex, therefore disable for tex files
				disable = { "latex" },
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = { enable = true },
			-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
			-- auto install language parsers
			auto_install = true,
		},

		config = function(_, opts)
			opts.ensure_installed = vim.tbl_flatten(vim.tbl_values(opts.ensure_installed))
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
