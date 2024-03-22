return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		-- local lsp = opts.mason_lspconfig
		local null_ls = opts.mason_null_ls
		-- local dap = opts.mason_dap
		local extend = vim.list_extend

		-- extend(null_ls.ensure_installed, { "markdownlint" })
	end,
}
