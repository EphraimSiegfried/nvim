return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		local lsp = opts.mason_lspconfig
		-- local null_ls = opts.mason_null_ls
		local dap = opts.mason_dap
		local extend = vim.list_extend

		extend(lsp.ensure_installed, { "bashls" })
		extend(dap.ensure_installed, { "bash" })
	end,
}
