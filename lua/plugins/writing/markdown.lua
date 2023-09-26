return {
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"lukas-reineke/headlines.nvim",
		dependencies = "nvim-treesitter/nvim-treesitter",
		ft = "markdown",
		event = "VeryLazy",
		config = function()
			require("headlines").setup({
				markdown = {
					query = vim.treesitter.query.parse(
						"markdown",
						[[
              (atx_heading [
                (atx_h1_marker)
                (atx_h2_marker)
                (atx_h3_marker)
                (atx_h4_marker)
                (atx_h5_marker)
                (atx_h6_marker)
              ] @headline)

              (thematic_break) @dash

              (fenced_code_block) @codeblock

              (block_quote_marker) @quote
              (block_quote (paragraph (inline (block_continuation) @quote)))
            ]]
					),
					headline_highlights = {
						"Headline1",
						"Headline2",
						"Headline3",
						"Headline4",
						"Headline5",
						"Headline6",
					},
					codeblock_highlight = "CodeBlock",
					dash_highlight = "Dash",
					dash_string = "-",
					quote_highlight = "Quote",
					quote_string = "┃",
					fat_headlines = true,
					fat_headline_upper_string = "▃",
					fat_headline_lower_string = "🬂",
				},
			})

			vim.api.nvim_set_hl(0, "Headline1", { fg = "#DBD2BB", bg = "#2F3C47", italic = false })
			vim.api.nvim_set_hl(0, "Headline2", { fg = "#DBD2BB", bg = "#40373E", italic = false })
			vim.api.nvim_set_hl(0, "Headline3", { fg = "#DBD2BB", bg = "#32402E", italic = false })
			vim.api.nvim_set_hl(0, "Headline4", { fg = "#DBD2BB", bg = "#224541", italic = false })
			vim.api.nvim_set_hl(0, "Headline5", { fg = "#6893bf", bg = "#2b3d4f", italic = false })
			vim.api.nvim_set_hl(0, "Headline6", { fg = "#d3869b", bg = "#6b454f", italic = false })
			vim.api.nvim_set_hl(0, "CodeBlock", { bg = "#444444" })
		end,
	},
	{
		"ixru/nvim-markdown",
		ft = "markdown",
	},
}
