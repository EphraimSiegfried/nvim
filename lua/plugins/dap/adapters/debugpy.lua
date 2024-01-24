local M = {}

function M.plugin()
	return {
		"mfussenegger/nvim-dap-python",
		ft = "python",
		after = "nvim-dap",
		config = function()
			local DEBUGPY_PATH = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python3"
			local dap_python = require("dap-python")
			dap_python.setup(DEBUGPY_PATH)
		end,
	}
end

return M
