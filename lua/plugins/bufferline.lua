local Plugin = {'nvim-lualine/lualine.nvim'}

Plugin.name = 'bufferline'

Plugin.opts = {
  options = {
    mode = 'buffers',
    offsets = {
      {filetype = 'NvimTree'}
    },
  },
  -- :help bufferline-highlights
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {attribute = 'fg', highlight = 'Function'},
      italic = false
    }
  }
}

function Plugin.init()
  vim.opt.showmode = false
end

return Plugin
