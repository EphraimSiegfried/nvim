-- Adapter Plugins
local cpptools = require("plugins.dap.adapters.cpptools")

-- Adapter Setups
local debugpy = require("plugins.dap.adapters.debugpy")

-- Keymaps TODO: PRETTIER SOLUTION
vim.keymap.set("n", "<Leader>dc", function()
	require("dap").continue()
end)
vim.keymap.set("n", "<Leader>db", function()
	require("dap").toggle_breakpoint()
end)

return {
	"mfussenegger/nvim-dap",
	lazy = true,
	debugpy.plugin(),

	config = function()
		require("dap")
		cpptools.setup()
	end,
}
