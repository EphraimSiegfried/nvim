-- Mostly taken and adapted from zenoli. Thanks :-)
return {
	"mfussenegger/nvim-jdtls",
	dependencies = {
		"mfussenegger/nvim-dap",
		"williamboman/mason.nvim",
	},
	ft = { "java" },
	config = function()
		require("lang.java.plugins.nvim-jdtls.utils").setup()
	end,
}
