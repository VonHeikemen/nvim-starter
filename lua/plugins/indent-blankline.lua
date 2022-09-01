local ok, indent_blankline = pcall(require, 'indent_blankline')
if not ok then return end

-- See :help indent-blankline-setup
indent_blankline.setup({
  char = '▏',
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  use_treesitter = true,
  show_current_context = false
})

