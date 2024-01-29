return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		"L3MON4D3/LuaSnip", -- snippet engine
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		lsp_zero.extend_cmp()
		local cmp_action = lsp_zero.cmp_action()
		local cmp = require("cmp")
		cmp.setup({
			formatting = lsp_zero.cmp_format(),
			mapping = cmp.mapping.preset.insert({
				["C-d>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
				["<C-e>"] = cmp.mapping.abort(), -- close completion window
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp_action.luasnip_supertab(),
				["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
			}),
			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
			}),
		})
	end,
}
