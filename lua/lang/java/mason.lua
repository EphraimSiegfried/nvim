local lsp_zero = require("lsp-zero")
return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		local lsp = opts.mason_lspconfig
		-- local null_ls = opts.mason_null_ls
		local dap = opts.mason_dap
		local extend = vim.list_extend

		extend(lsp.ensure_installed, { "jdtls" })
		extend(dap.ensure_installed, { "java-debug-adapter", "java-test" })
		vim.tbl_extend("force", lsp.handlers, { jdtls = lsp_zero.noop }) -- ignore auto setup since nvim-jdtls will handle it
	end,
}
