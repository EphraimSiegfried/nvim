return {
	"williamboman/mason.nvim",
	opts = {
		mason_lspconfig = {
			-- gets auto configured by lsp-zero
			ensure_installed = { "bashls" },
		},
		mason_dap = {
			ensure_installed = { "bash" },
		},
	},
}
