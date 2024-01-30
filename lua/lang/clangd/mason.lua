return {
	"williamboman/mason.nvim",
	opts = {
		mason_lspconfig = {
			-- gets auto configured by lsp-zero
			ensure_installed = { "clangd" },
			handlers = {
				require("lsp-zero").default_setup, -- TODO: i have to add this since it does not get merged with mason.lua opts
				clangd = function()
					require("lspconfig").clangd.setup({
						cmd = { "clangd" },
						capabilities = {
							offsetEncoding = "utf-8",
						},
					})
				end,
			},
		},
		mason_null_ls = {
			ensure_installed = { "clang_format" },
		},
	},
}
