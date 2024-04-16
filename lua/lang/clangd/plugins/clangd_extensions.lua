return {
	"p00f/clangd_extensions.nvim",
	-- ft = { "c", "cpp", "h" },
	keys = {
		{
			"<leader><Tab>",
			function()
				require("clangd_extensions.switch_source_header").switch_source_header()
			end,
			desc = "switch between source and header",
		},
	},
	-- lazy = true,
	-- config = function() end,
	-- opts = {
	-- 	inlay_hints = {
	-- 		inline = false,
	-- 	},
	-- 	ast = {
	-- 		--These require codicons (https://github.com/microsoft/vscode-codicons)
	-- 		role_icons = {
	-- 			type = "",
	-- 			declaration = "",
	-- 			expression = "",
	-- 			specifier = "",
	-- 			statement = "",
	-- 			["template argument"] = "",
	-- 		},
	-- 		kind_icons = {
	-- 			Compound = "",
	-- 			Recovery = "",
	-- 			TranslationUnit = "",
	-- 			PackExpansion = "",
	-- 			TemplateTypeParm = "",
	-- 			TemplateTemplateParm = "",
	-- 			TemplateParamObject = "",
	-- 		},
	-- 	},
	-- },
}
