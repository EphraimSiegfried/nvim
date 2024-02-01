local set_keymap = require("plugins.coding.lsp.lsp-config.keymap")

return {
	"neovim/nvim-lspconfig",
	cmd = { "LspInfo", "LspInstall", "LspStart" },
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "williamboman/mason-lspconfig.nvim" },
		{ "folke/neodev.nvim" },
		{ "folke/neoconf.nvim" },
		{ "nvim-navic" },
		{ "SmiteshP/nvim-navbuddy" },
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		lsp_zero.extend_lspconfig()

		lsp_zero.on_attach(function(client, bufnr)
			-- client.server_capabilities.documentFormattingProvider = false
			-- client.server_capabilities.documentFormattingRangeProvider = false
			set_keymap(bufnr)
			if client.server_capabilities.documentSymbolProvider then
				require("nvim-navic").attach(client, bufnr)
			end
		end)
	end,
}
