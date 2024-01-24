return {
	"lervag/vimtex",
	ft = "tex",
	config = function()
		vim.cmd([[
        let g:tex_flavor="latex"
        let g:vimtex_view_method="sioyek"
        let g:vimtex_general_viewer="sioyek"
        set conceallevel=1
        let g:tex_conceal="abdmg"
        " let g:vimtex_quickfix_ignore_filters = ['Undefined reference']
        " let g:vimtex_log_ignore = ['Undefined reference']
        ]])
	end,
}
