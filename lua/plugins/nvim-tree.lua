return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({
			diagnostics = {
				enable = true,
			},
			view = {
				float = {
					enable = true,
					quit_on_focus_loss = true,
				},
			},
		})

		-- Key Mapping
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
	end,
}
