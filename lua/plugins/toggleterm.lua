local ok, toggleterm = pcall(require, 'toggleterm')
if not ok then return end

-- See :help toggleterm-roadmap
toggleterm.setup({
  open_mapping = '<C-t>',
  direction = 'horizontal',
})

