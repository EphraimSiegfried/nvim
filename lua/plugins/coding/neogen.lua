return {
	"danymat/neogen",
	keys = {
		{
			"ga",
			function()
				require("neogen").generate()
			end,
			desc = "Create function/class/script annotations",
		},
	},
	config = function()
		require("neogen").setup({ snippet_engine = "luasnip" })
	end,
}
