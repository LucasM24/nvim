local set = vim.opt_local

set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
vim.o.textwidth = 79
vim.o.formatoptions = vim.o.formatoptions .. "t"
set.wrap = false
vim.cmd([[ set colorcolumn=79 ]])
