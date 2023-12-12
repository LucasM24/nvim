return {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require "config.plugins.telescope.setup"
    require "config.plugins.telescope.keymaps"
  end
}
