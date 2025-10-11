if vim.g.skip_plugins == 1 then
  return
end

MiniDeps.add('akinsho/bufferline.nvim')

MiniDeps.now(function()
  vim.keymap.set('n', 'gt', '<cmd>BufferLinePick<cr>', {desc = 'Pick a visible tab'})

  -- See :help bufferline-settings
  require('bufferline').setup({
    options = {
      mode = 'buffers',
      offsets = {
        {filetype = 'snacks_layout_box'}
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
  })
end)

