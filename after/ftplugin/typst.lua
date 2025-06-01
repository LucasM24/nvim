local set = vim.opt_local

set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.formatoptions = 'tqj'
set.textwidth = 80


vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.typ",
  group = vim.api.nvim_create_augroup("Typst group", {clear = true}),
  callback = function()
    local name = vim.fn.expand("%:t")
    -- vim.print(name)
    job = vim.system({"typst", "watch", name}, {}, function()
      -- vim.print("Process ended", out.code)
    end)
  end
})
