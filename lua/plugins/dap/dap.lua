-- Adapter Plugins
-- local cpptools = require("plugins.dap.adapters.cpptools")
--
-- -- Adapter Setups
-- local debugpy = require("plugins.dap.adapters.debugpy")

return {
	"mfussenegger/nvim-dap",
	-- keys = {
	-- 	{
	-- 		"<Leader>dc",
	-- 		function()
	-- 			require("dap").continue()
	-- 		end,
	-- 		desc = "Start or continue debugging",
	-- 	},
	-- 	"<Leader>db",
	-- 	function()
	-- 		require("dap").toggle_breakpoint()
	-- 	end,
	-- 	desc = "Toggle Breakpoint",
	-- },
	--
	-- debugpy.plugin(),
	--
	-- config = function()
	-- 	require("dap")
	-- 	cpptools.setup()
	-- end,
}
