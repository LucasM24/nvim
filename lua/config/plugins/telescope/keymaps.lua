local actions = require("telescope.actions")
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {})
keymap("n", "<leader>fb", "<cmd>Telescope git_branches<cr>", {})
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", {})
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {})
keymap("n", "<leader>gf", "<cmd>Telescope git_status<cr>", {})
keymap("n", "<leader>h", "<cmd>Telescope help_tags<cr>", {})
