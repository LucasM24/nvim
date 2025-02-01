return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_general_viewer = 'zathura'
    vim.g.vimtex_compiler_method = 'tectonic'
    -- vim.g.vimtex_view_general_options = '--fork --synctex-forward @line:@col:@tex --synctex-editor-command nvim --maximized'
  end,
  config = function()
    -- Create an autocommand to run :VimtexCompile when saving a LaTeX file
    vim.api.nvim_create_autocmd('BufWritePost', {
      pattern = '*.tex',         -- Trigger only for files with a .tex extension
      callback = function()
        vim.cmd('VimtexCompile') -- Run :VimtexCompile command
        -- local windows = vim.fn.getwininfo()
        -- for _, win in pairs(windows) do
        --   if win["quickfix"] == 1 then
        --     vim.cmd.cclose()
        --     return
        --   end
        -- end
      end
    })
    -- vim.keymap.set('n', '<leader>m', function()
    --   vim.cmd('VimtexCompile')  -- Execute vim.cmd inside a Lua function
    -- end)
  end
}
