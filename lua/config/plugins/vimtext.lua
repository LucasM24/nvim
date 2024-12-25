return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "mupdf"
    vim.g.vimtex_compiler_method = 'tectonic'
    -- augroup VimTeX
    --   autocmd!
    --   autocmd BufReadPre /path/to/project/*.tex
    --         \ let b:vimtex_main = '/path/to/project/main.tex'
    -- augroup END
  end,
  config = function ()
    -- Create an autocommand to run :VimtexCompile when saving a LaTeX file
    vim.api.nvim_create_autocmd('BufWritePost', {
      pattern = '*.tex',  -- Trigger only for files with a .tex extension
      callback = function()
        vim.cmd('VimtexCompile')  -- Run :VimtexCompile command
      end
    })
    -- vim.keymap.set('n', '<leader>m', function()
    --   vim.cmd('VimtexCompile')  -- Execute vim.cmd inside a Lua function
    -- end)
  end
}
