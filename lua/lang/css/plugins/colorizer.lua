return {
	"norcalli/nvim-colorizer.lua",
	event = "VeryLazy",
	ft = "css",
	cmd = "ColorizerToggle",

	config = function()
		require("colorizer").setup()
	end,
}
