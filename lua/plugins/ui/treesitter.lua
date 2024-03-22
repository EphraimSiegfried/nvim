return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	opts = {
		ensure_installed = { "vim" },
		auto_install = true,

		highlight = { enable = true },
		indent = { enable = true },
		autotag = { enable = true },
		-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
		context_commentstring = {
			enable = true,
			enable_autocmd = false,
		},
	},

	config = function(_, opts)
		-- opts.ensure_installed = vim.tbl_flatten(vim.tbl_values(opts.ensure_installed))
		require("nvim-treesitter.configs").setup(opts)
	end,
}
