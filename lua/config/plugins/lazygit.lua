return {
  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Keymap for open LazyGit
    keymap("n", "<leader>lg", ":LazyGit<CR>", opts)
  end
}
