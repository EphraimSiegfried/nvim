return {
	"ray-x/lsp_signature.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("lsp_signature").setup({
			bind = true,
			doc_lines = 10,
			hint_enable = true,
			toggle_key = "<C-d>",
		})
	end,
}
