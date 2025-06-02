local set = vim.opt_local

set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.formatoptions = 'tqj'
set.textwidth = 80

local exec = function()
  local filename = vim.fn.expand("%:t")
  local i, j = string.find(filename, ".typ")
  local pdf = string.sub(filename, 1, i) .. "pdf"

  vim.system({"typst", "watch", filename}, {}, function()
    vim.print("Process ended", out.code)
  end)
  vim.system({"zathura", pdf}, {}, function()
    vim.print("Process ended", out.code)
  end)
end

-- vim.api.nvim_set_keymap("n", "<leader>x", exec, {noremap = true})
vim.keymap.set({"n"}, "<leader>x", exec)
-- vim.api.nvim_create_autocmd("BufWritePost", {
--   pattern = "*.typ",
--   group = vim.api.nvim_create_augroup("Typst group", {clear = true}),
--   callback = function()
--     local filename = vim.fn.expand("%:t")
--     local i, j = string.find(filename, ".typ")
--     local pdf = string.sub(filename, 1, i) .. "pdf"
--
--     vim.system({"typst", "watch", filename}, {}, function()
--       vim.print("Process ended", out.code)
--     end)
--     vim.system({"mupdf", pdf}, {}, function()
--       vim.print("Process ended", out.code)
--     end)
--   end
-- })
