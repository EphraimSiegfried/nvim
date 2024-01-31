return {
	"williamboman/mason.nvim",
	opts = {
		mason_lspconfig = {
			-- gets auto configured by lsp-zero
			ensure_installed = { "pyright" },
		},
		mason_null_ls = {
			ensure_installed = { "black", "isort" },
		},
		mason_dap = {
			ensure_installed = { "debugpy" },
		},
	},
}
