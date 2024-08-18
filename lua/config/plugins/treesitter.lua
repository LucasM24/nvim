return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- Configure treesitter
    treesitter.setup {
      auto_install = false,
      ignore_install = {},

      highlight = {
        enable = true,
      },

      -- enable indentation
      indent = { enable = true },

      -- enable autotagging (w/ nvim-ts-autotag plugin)
      -- autotag = {
      --   enable = true,
      -- },

      -- A list of parser names, or "all" (the five listed parsers should always be installed)
      ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "typescript", "http", "json", "php", "css", "scss", "vue", "html" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = true,
    }
  end
}
