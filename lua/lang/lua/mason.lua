return {
	"williamboman/mason.nvim",
	opts = {
		mason_lspconfig = {
			ensure_installed = { "luals" },
			handlers = {
				require("lsp-zero").default_setup,
				lua_ls = function()
					require("lspconfig").lua_ls.setup({
						settings = { -- custom settings for lua
							Lua = {
								-- make the language server recognize "vim" global
								diagnostics = {
									globals = { "vim" },
								},
								workspace = {
									-- make language server aware of runtime files
									library = {
										[vim.fn.expand("$VIMRUNTIME/lua")] = true,
										[vim.fn.stdpath("config") .. "/lua"] = true,
									},
								},
							},
						},
					})
				end,
				-- luals = require("lsp-zero").noop(),
			},
		},
		mason_null_ls = {
			ensure_installed = { "stylua" },
		},
	},
}
