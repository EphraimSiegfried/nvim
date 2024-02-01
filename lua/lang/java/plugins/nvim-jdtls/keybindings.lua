return {
	dap_key_bindings = function(bufnr)
		local opts = { buffer = bufnr }
		local map = vim.keymap.set
		map("n", "<leader>ja", require("jdtls.dap").test_class, { desc = "Run/Debug all java tests" })
		map("n", "<leader>jn", require("jdtls.dap").test_nearest_method, { desc = "Run/Debug nearest java tests" })
		map("n", "<leader>jp", require("jdtls.dap").pick_test, { desc = "Pick java test" })
	end,
}
