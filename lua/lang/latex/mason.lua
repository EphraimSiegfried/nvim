return {
	"williamboman/mason.nvim",
	opts = {
		mason_lspconfig = {
			ensure_installed = { "ltex" },
			-- configure the lsp server
			handlers = {
				require("lsp-zero").default_setup, -- TODO: i have to add this since it does not get merged with mason.lua opts
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
			},
		},
		mason_null_ls = {
			ensure_installed = { "latexindent" },
		},
	},
}
