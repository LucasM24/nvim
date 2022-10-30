local actions = require("telescope.actions")
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('telescope').setup{
  defaults = {
    layout_strategy = 'vertical',
    file_ignore_patterns = {"vendor", "*.yml", ".svg"},
    sorting_strategy = "ascending",
    layout_config = {
      width = .8,
      mirror = true,
      prompt_position = "top"
    },
    selection_caret = "  ",
    entry_prefix = "  ",
    color_devicons = true,
    mappings = {
      i = {
        ['<leader>q'] = actions.close,
      },
      n = {
        ['v'] = actions.select_vertical,
        ['<leader>q'] = actions.close,
      }
    },
  }
}
