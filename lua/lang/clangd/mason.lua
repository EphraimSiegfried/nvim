return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		local lsp = opts.mason_lspconfig
		local null_ls = opts.mason_null_ls
		local dap = opts.mason_dap
		local extend = vim.list_extend

		extend(lsp.ensure_installed, { "clangd" })
		vim.tbl_extend("force", lsp.handlers, {
			clangd = function()
				require("lspconfig").clangd.setup({
					cmd = { "clangd" },
					capabilities = {
						offsetEncoding = "utf-8",
					},
				})
			end,
		})
		extend(null_ls.ensure_installed, { "clang_format" })
		extend(dap.ensure_installed, { "cppdbg" })
	end,
}
