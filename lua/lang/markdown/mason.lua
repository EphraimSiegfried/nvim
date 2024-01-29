return {
	"williamboman/mason.nvim",
	opts = {
		-- gets auto configured by null-ls
		mason_null_ls = {
			ensure_installed = { "markdownlint" },
		},
	},
}
