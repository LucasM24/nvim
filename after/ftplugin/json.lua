local set = vim.opt_local

set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.formatoptions = "tqj" -- Prevent autocomment when hit enter



-- Set the tab length to the named file types 
vim.cmd[[autocmd Filetype xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2]]
vim.cmd[[autocmd Filetype php setlocal shiftwidth=4 tabstop=4]]
