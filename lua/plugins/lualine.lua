local ok, lualine = pcall(require, 'lualine')
if not ok then return end

vim.opt.showmode = false

-- See :help lualine.txt
lualine.setup({
  options = {
    theme = 'onedark',
    icons_enabled = true,
    component_separators = '|',
    section_separators = '',
  },
})

