local logo = {
	[[                                     ,]],
	[[              ,-.       _,---._ __  / \]],
	[[             /  )    .-'       `./ /   \]],
	[[            (  (   ,'            `/    /|]],
	[[             \  `-"             \'\   / |]],
	[[              `.              ,  \ \ /  |]],
	[[               /`.          ,'-`----Y   |]],
	[[              (            ;        |   ']],
	[[              |  ,-.    ,-'         |  /]],
	[[              |  | (   |       nvim | /]],
	[[              )  |  \  `.___________|/]],
	[[              `--'   `--']],
}

return {
	"goolord/alpha-nvim",
	priority = 900,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header

		dashboard.section.header.val = logo

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "   New file", ":ene <bar> startinsert <cr>"),
			dashboard.button("f", "   Find file", ":Telescope find_files<cr>"),
			dashboard.button("r", "   Recent", ":Telescope oldfiles<cr>"),
			dashboard.button("s", "   Settings", ":e ~/.config/nvim | :cd %:p:h<cr>"),
			dashboard.button("q", "   Quit nvim", ":qa<CR>"),
		}

		alpha.setup(dashboard.opts)
	end,
}
