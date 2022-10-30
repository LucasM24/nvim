-- Autocommands -- 

-- Highlight on yank
vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]

-- Set the tab length to the named file types 
vim.cmd[[autocmd Filetype xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2]]
vim.cmd[[autocmd Filetype php setlocal shiftwidth=4 tabstop=4]]

-- Prevent the autocomment when hit enter 
vim.cmd [[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]]
