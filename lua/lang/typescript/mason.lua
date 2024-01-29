return {
	"williamboman/mason.nvim",
	opts = {
		mason_lspconfig = {
			-- gets auto configured by lsp-zero
			ensure_installed = { "tsserver" },
		},
		mason_null_ls = {
			ensure_installed = { "prettier" },
		},
	},
}
