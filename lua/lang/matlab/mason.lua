return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		local lsp = opts.mason_lspconfig
		-- local null_ls = opts.mason_null_ls
		-- local dap = opts.mason_dap
		local extend = vim.list_extend

		extend(lsp.ensure_installed, { "matlab_ls" })
		vim.tbl_extend("force", lsp.handlers, {
			matlab_ls = function()
				require("lspconfig").matlab_ls.setup({
					settings = {
						matlab = {
							capabilities = require("cmp_nvim_lsp").default_capabilities(),
							indexWorkspace = true,
							installPath = "/Applications/MATLAB_R2023b.app/bin/",
							telemetry = false,
						},
						single_file_support = true,
					},
				})
			end,
		})
	end,
}
