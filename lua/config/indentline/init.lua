local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

vim.g.indent_blankline_char = "▏"
vim.cmd[[highlight IndentBlanklineContextChar guifg=#FFFFFF gui=nocombine]]

indent_blankline.setup {
  -- Not mark the spaces between setences with indent lines
  show_trailing_blankline_indent = false,
  show_current_context = true,
  -- show_current_context_start = true,
  show_end_of_line = true,
}
