local set = vim.opt

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
set.clipboard = "unnamedplus"  -- allows neovim to access the system clipboard
set.mouse = "a"

-- Search settings
set.hlsearch = false
set.incsearch = true
set.ignorecase = true
set.smartcase = true

--Indent settings
set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

-- Windows settings
set.splitbelow = true
set.splitright = true
set.scrolloff = 8

vim.g["gitgutter_use_location_list"] = 1
