return {
	"startup-nvim/startup.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		require("startup").setup({ theme = "Dashboard" })
		-- vim.g.startup_bookmarks = {
		-- 	["N"] = "~/.config/nvim",
		-- 	["K"] = "~/.config/kitty/kitty.conf",
		-- 	["S"] = "~/.skhdrc",
		-- 	["Z"] = "~/.zshrc",
		-- 	["Y"] = "~/.yabairc",
		-- }
	end,
}
