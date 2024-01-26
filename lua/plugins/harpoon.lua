return {
	"ThePrimeagen/harpoon",
	requires = "nvim-lua/plenary.nvim",
	event = "VeryLazy",
	config = function()
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>h", function()
			require("harpoon.mark").add_file()
		end)
		keymap.set("n", "<leader>fh", function()
			require("harpoon.ui").toggle_quick_menu()
		end)
		keymap.set("n", "<Tab>", function()
			require("harpoon.ui").nav_next()
		end)
		keymap.set("n", "<S-<Tab>>", function()
			require("harpoon.ui").nav_prev()
		end)
	end,
}