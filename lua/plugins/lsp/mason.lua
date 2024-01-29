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
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"lua_ls",
				"pyright",
				"ltex",
			},
			handlers = {
				require("lsp-zero").default_setup,
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		},
		-- list of formatters & linters for mason to install
		mason_null_ls = {
			ensure_installed = {
				"prettier", -- ts/js formatter
				"stylua", -- lua formatter
				"eslint_d", -- ts/js linter
				"latexindent", -- correct indentitation for latex files
				"isort", -- sorts imports in python files
				"black", -- formats python files
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true,
			handlers = {},
		},
	},
	config = function(_, opts)
		-- print(vim.inspect(opts))
		require("mason").setup(opts.mason)
		require("mason-lspconfig").setup(opts.mason_lspconfig)
		require("mason-null-ls").setup(opts.mason_null_ls)
	end,
}
