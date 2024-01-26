local set = vim.opt

set.clipboard = "unnamedplus" -- use system clipboard as default register

-- tabs and indentation
set.expandtab = true --expand tab to spaces
set.shiftwidth = 2 -- 2 spaces for indent width
set.tabstop = 2 -- 2 spaces for tabs (prettier default)
set.autoindent = true -- copy indent from current line when starting new one

-- search settings
set.hlsearch = true
set.incsearch = true
set.ignorecase = true -- ignore case when searching
set.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- buffer settings
set.splitbelow = true -- split vertical window to the right
set.splitright = true -- split horizontal window to the bottom
set.hidden = true --When on a buffer becomes hidden when it is abandoned.

-- appearance settings
set.scrolloff = 5 -- Minimal number of screen lines to keep above and below the cursor.
set.termguicolors = true

-- navigation
set.relativenumber = true -- lines have relative numbers
set.number = true -- current line shows absolute number
set.cursorline = true -- highlight the current line

--folding
-- set.foldmethod = "indent"

-- wrapping settings
set.wrap = true
set.linebreak = true
-- set.formatoptions = "cqt"
-- set.wrapmargin = 60

-- for indent-blankline plugin
-- set.list = true
-- set.listchars:append("space:⋅")
-- set.listchars:append("eol:↴")

set.encoding = "UTF-8"
-- Colorscheme
-- vim.cmd([[colorscheme gruvbox-material]])

-- Vimtex
-- vim.g.maplocalleader = ","
-- vim.g.vimtex_view_method = 'skim'
