-- See :help bufferline-settings
require('bufferline').setup({
  options = {
    mode = 'buffers',
    offsets = {
      {filetype = 'NvimTree'}
    },
  }
  -- :help bufferline-highlights
  highlights = {
    buffer_selected = {
      gui = 'NONE'
    },
    indicator_selected = {
      guifg = {attribute = 'fg', highlight = 'Function'},
      gui = 'NONE'
    }
  }
})

