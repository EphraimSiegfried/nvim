return {
	"neovim/nvim-lspconfig",
	cmd = { "LspInfo", "LspInstall", "LspStart" },
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "williamboman/mason-lspconfig.nvim" },
		"folke/neodev.nvim",
		"folke/neoconf.nvim",
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		lsp_zero.extend_lspconfig()

		lsp_zero.on_attach(function(client, bufnr)
			-- client.server_capabilities.documentFormattingProvider = false
			-- client.server_capabilities.documentFormattingRangeProvider = false
			local opts = { buffer = bufnr, remap = false }
			local map = vim.keymap.set
			opts.desc = "See available code actions"

			opts.desc = "See available code actions"
			map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

			opts.desc = "Smart rename"
			map("n", "<leader>rn", vim.lsp.buf.rename, opts)

			opts.desc = "Show buffer diagnostics"
			map("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

			opts.desc = "Show line diagnostics"
			map("n", "<leader>d", vim.diagnostic.open_float, opts)

			opts.desc = "Go to previous diagnostic"
			map("n", "[d", vim.diagnostic.goto_prev, opts)

			opts.desc = "Go to next diagnostic"
			map("n", "]d", vim.diagnostic.goto_next, opts)

			opts.desc = "Show documentation for what is under cursor"
			map("n", "K", vim.lsp.buf.hover, opts)

			opts.desc = "Restart LSP"
			map("n", "<leader>rs", ":LspRestart<CR>", opts)
		end)
	end,
}
