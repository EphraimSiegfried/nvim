return {
	"williamboman/mason.nvim",
	opts = {
		mason_lspconfig = {
			-- gets auto configured by lsp-zero
			ensure_installed = { "clangd" },
		},
		mason_null_ls = {
			ensure_installed = { "clang_format" },
		},
	},
}
