-- Mappings -- 
local keymap = vim.api.nvim_set_keymap
keymap('n', '<Leader>e', ':NvimTreeToggle<CR>',{})

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      custom_only = false,
      list = {
        -- user mappings go here
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})
