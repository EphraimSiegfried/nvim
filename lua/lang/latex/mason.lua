return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		local lsp = opts.mason_lspconfig
		local null_ls = opts.mason_null_ls
		local dap = opts.mason_dap
		local extend = vim.list_extend

		extend(lsp.ensure_installed, { "ltex" })
		vim.tbl_extend("force", lsp.handlers, {
			ltex = function()
				require("lspconfig").ltex.setup({
					filetypes = { "tex", "bib", "txt", "md" },
					settings = {
						capabilities = require("cmp_nvim_lsp").default_capabilities(),
						checkFrequency = false,
						language = "de-DE",
						completionEnabled = true,
						additionalRules = {
							enablePickyRules = true,
							motherTongue = "de-DE",
						},
					},
				})
			end,
		})
		extend(null_ls.ensure_installed, { "latexindent" })
	end,
}
