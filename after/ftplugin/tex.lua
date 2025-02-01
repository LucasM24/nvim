local set = vim.opt_local

set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
vim.o.textwidth = 140
vim.o.formatoptions = vim.o.formatoptions .. "t"
set.wrap = false
vim.cmd([[ set colorcolumn=140 ]])
vim.g.vimtex_quickfix_open_on_warning = 0
-- vim.g.vimtex_view_mupdf_options = '-f'
