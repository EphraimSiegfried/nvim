return {
	"williamboman/mason.nvim",
	opts = {
		mason_lspconfig = {
			-- gets auto configured by lsp-zero
			ensure_installed = { "luals" },
			-- handlers = {
			-- 	require("lspconfig").lua_ls.setup(require("lsp-zero").nvim_lua_ls()),
			-- },
		},
		mason_null_ls = {
			ensure_installed = { "stylua" },
		},
	},
}
