local set = vim.opt

vim.g.mapleader = " "

-- Sets config
set.nu = true -- Show the number of the lines
set.relativenumber = false -- Set relative numbers
set.wrap = false -- Deactivate the line wrapping
set.fileencoding = 'utf-8'
set.termguicolors = true
set.hidden = true
set.backup = false
set.swapfile = false
set.autoindent = true
set.smartindent = true
set.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
set.mouse = "a"

-- Search settings
set.hlsearch = false
set.incsearch = true
set.ignorecase = true
set.smartcase = true

-- Windows settings
set.splitbelow = true
set.splitright = true
set.scrolloff = 4

-- Highligth on yank
vim.cmd[[augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank { higroup="Visual", timeout=300 }
augroup END]]

-- Avoid comment in next line
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

vim.filetype.add({
    pattern = {
        [".*%.blade%.php"] = "blade",
    },
})
