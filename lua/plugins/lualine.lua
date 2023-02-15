local Plugin = {'nvim-lualine/lualine.nvim'}

Plugin.name = 'lualine'

-- See :help lualine.txt
Plugin.opts = {
  options = {
    theme = 'tokyonight',
    icons_enabled = true,
    component_separators = '|',
    section_separators = '',
  },
}

function Plugin.init()
  vim.opt.showmode = false
end

return Plugin
