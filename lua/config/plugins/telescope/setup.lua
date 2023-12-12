local actions = require("telescope.actions")
local keymap = vim.api.nvim_set_keymap
local telescope = require "telescope"

telescope.setup {
  defaults = {
    layout_strategy = 'vertical',
    file_ignore_patterns = { "vendor", "*.yml", ".svg", "node_modules", "public", "storage/app", "storage/framework" },
    sorting_strategy = "ascending",
    layout_config = {
      vertical = {
        preview_cutoff = 0,
        prompt_position = "top",
        mirror = true
      },
    },
    selection_caret = " > ",
    entry_prefix = "  ",
    color_devicons = true,
    mappings = {
      i = {
        ['<leader>q'] = actions.close,
      },
      n = {
        ['v'] = actions.select_vertical,
        ['h'] = actions.select_horizontal,
        ['<leader>q'] = actions.close,
      }
    },
  },
  pickers = {
    find_files = {
      path_display = function(opts, path)
        local tail = require("telescope.utils").path_tail(path)
        return string.format("%s (%s)", tail, path)
      end,
      layout_strategy = "center"
    },
    live_grep = {
      file_ignore_patterns = { "vendor", "*.yml", ".svg", "node_modules", "public", "storage" },
    },
    grep_string = {
      word_match = { "-w" }
    }

  },
}

--telescope.load_extension("live_grep_args")
