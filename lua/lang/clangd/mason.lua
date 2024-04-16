local notify = vim.notify
vim.notify = function(msg, ...)
	if msg:match("warning: multiple different client offset_encodings") then
		return
	end

	notify(msg, ...)
end
return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		local lsp = opts.mason_lspconfig
		local null_ls = opts.mason_null_ls
		local dap = opts.mason_dap
		local extend = vim.list_extend

		extend(lsp.ensure_installed, { "clangd" })
		vim.tbl_extend("force", lsp.handlers, {
			clangd = function()
				require("lspconfig").clangd.setup({
					cmd = { "clangd" },
					capabilities = {
						offsetEncoding = "utf-16",
					},
				})
			end,
		})
		extend(null_ls.ensure_installed, { "clang_format" })
		extend(dap.ensure_installed, { "cppdbg" })
		-- vim.tbl_extend("force", null_ls.handlers, {
		-- 	clang_format = function(source_name, methods)
		-- 		require("null-ls").builtins.formatting.clang_format.with({
		-- 			extra_args = { "--offset=utf-8" },
		-- 		})
		-- 	end,
		-- })
	end,
}
