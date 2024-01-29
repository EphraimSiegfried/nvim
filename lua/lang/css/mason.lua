return {
	"williamboman/mason.nvim",
	opts = {
		mason_lspconfig = {
			-- gets auto configured by lsp-zero
			ensure_installed = { "cssls" },
		},
	},
}
