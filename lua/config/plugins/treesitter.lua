return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,   -- make sure we load this during startup if it is your main colorscheme
  config = function()
    require 'nvim-treesitter.configs'.setup {
      -- A list of parser names, or "all" (the five listed parsers should always be installed)
      ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "typescript", "http", "json", "php", "css", "scss", "vue", "jsonc", "hyprlang",},

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = true,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = false,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true
      }
    }
  end
}
