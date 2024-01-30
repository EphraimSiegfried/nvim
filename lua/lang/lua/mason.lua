return {
	"williamboman/mason.nvim",
	opts = {
		mason_lspconfig = {
			-- gets auto configured by lsp-zero
			ensure_installed = { "luals" },
			handlers = {
				-- luals = require("lspconfig").lua_ls.setup(require("lsp-zero").nvim_lua_ls()),
				luals = require("lsp-zero").noop(),
			},
		},
		mason_null_ls = {
			ensure_installed = { "stylua" },
		},
	},
}
