local M = {}

local function lsp_keymaps(bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  local keymap = vim.keymap.set
  keymap('n', 'gD', vim.lsp.buf.declaration, bufopts)
  keymap('n', 'gd', vim.lsp.buf.definition, bufopts)
  keymap('n', '<space>lf', function() vim.lsp.buf.format { async = true } end, bufopts)
  keymap('n', 'K', vim.diagnostic.open_float, bufopts)
end

M.on_attach = function(client, bufnr)
  lsp_keymaps(bufnr)
end

return M
