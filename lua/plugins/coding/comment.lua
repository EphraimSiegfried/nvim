return {
	"numToStr/Comment.nvim",
	event = { "BufRead", "BufNewFile" },
	lazy = true,
	config = function()
		require("Comment").setup()
	end,
}
