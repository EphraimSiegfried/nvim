return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		local lsp = opts.mason_lspconfig
		local null_ls = opts.mason_null_ls
		local extend = vim.list_extend

		extend(lsp.ensure_installed, { "tsserver" })
		extend(null_ls.ensure_installed, { "prettier", "eslint_d" })
	end,
}
