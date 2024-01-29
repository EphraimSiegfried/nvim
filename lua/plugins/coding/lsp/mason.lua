return {
	"williamboman/mason.nvim",
	event = "VimEnter",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
	},
	opts = {
		mason = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
		mason_lspconfig = {
			ensure_installed = {},
			handlers = {
				require("lsp-zero").default_setup, -- configures lsp automatically
			},
			automatic_installation = true,
		},
		mason_null_ls = {
			ensure_installed = {},
			automatic_installation = true,
			handlers = {}, -- this configures formatters/linters etc automatically
		},
	},
	config = function(_, opts)
		-- print(vim.inspect(opts))
		require("mason").setup(opts.mason)
		require("mason-lspconfig").setup(opts.mason_lspconfig)
		require("mason-null-ls").setup(opts.mason_null_ls)
	end,
}
