return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		local lsp = opts.mason_lspconfig
		-- local null_ls = opts.mason_null_ls
		local dap = opts.mason_dap
		local extend = vim.list_extend

		extend(lsp.ensure_installed, { "lua_ls" })
		vim.tbl_extend("force", lsp.handlers, {
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
		})
		extend(dap.ensure_installed, { "stylua" })
	end,
}
