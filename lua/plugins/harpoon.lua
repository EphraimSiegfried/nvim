return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
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
		keymap.set("n", "<S-Tab>", function()
			require("harpoon.ui").nav_prev()
		end)
		-- keymap.set("n", "<leader>hx", function()
		-- 	require("harpoon.cmd-ui").toggle_quick_menu()
		-- end)
		-- for termNum = 1, 9, 1 do
		-- 	keymap.set("n", "<leader>x" .. termNum, function()
		-- 		require("harpoon.term").gotoTerminal(termNum)
		-- 	end)
		-- end
	end,
}
