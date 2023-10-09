-- Debugger for c
local M = {}
local C_DEBUG_ADAPTER_BIN = vim.fn.stdpath("data") .. "/mason/bin/OpenDebugAD7"

function M.setup()
	local dap = "dap"
	dap.adapters.cppdbg = {
		id = "cppdbg",
		type = "executable",
		command = C_DEBUG_ADAPTER_BIN,
		options = {
			detached = false,
		},
	}
	dap.configurations.c = {
		{
			name = "Launch file",
			type = "cppdbg",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopAtEntry = true,
		},
	}
end

return M
