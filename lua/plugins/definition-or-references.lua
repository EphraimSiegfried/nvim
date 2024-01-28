return {
	"KostkaBrukowa/definition-or-references.nvim",
	keys = {
		{
			"gd",
			function()
				require("definition-or-references").definition_or_references()
			end,
			desc = "Jump to definition or reference",
		},
	},
	config = function()
		require("definition-or-references").setup({
			on_references_result = function(result)
				require("telescope.pickers")
					.new({}, {
						prompt_title = "LSP References",
						finder = require("telescope.finders").new_table({
							results = vim.lsp.util.locations_to_items(result, "utf-16"),
							entry_maker = require("telescope.make_entry").gen_from_quickfix(),
						}),
						previewer = require("telescope.config").values.qflist_previewer({}),
					})
					:find()
			end,
		})
	end,
}
