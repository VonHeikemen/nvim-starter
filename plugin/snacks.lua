if vim.g.skip_plugins == 1 then
  return
end

MiniDeps.add('folke/snacks.nvim')

MiniDeps.now(function()
  -- docs: https://github.com/folke/snacks.nvim/blob/main/README.md
  local Snacks = require('snacks')

  Snacks.setup({
    indent = {
      enabled = true,
      char = '▏',
    },
    explorer = {
      enabled = true,
      replace_netrw = true,
    },
    input = {
      enabled = true,
      icon = '❯',
    },
    picker = {
      enabled = true,
      ui_select = true,
      prompt = '❯ ',
      formatters = {
        file = {truncate = 78},
      },
    },
    bigfile = {
      -- Only use `bigfile` module on older Neovim versions
      enabled = vim.fn.has('nvim-0.11') == 0,
      notify = false,
      size = 1024 * 1024, -- 1MB
      setup = function(ctx)
        vim.cmd('syntax clear')
        vim.opt_local.syntax = 'OFF'
        local buffer = vim.b[ctx.buf]
        if buffer.ts_highlight then
          vim.treesitter.stop(ctx.buf)
        end
      end
    },
  })

  -- Disable indent guide animation
  vim.g.snacks_animate = false

  -- docs: https://github.com/folke/snacks.nvim/blob/main/docs/explorer.md
  vim.keymap.set('n', '<leader>e', function()
    Snacks.explorer()
  end, {desc = 'Toggle file explorer'})

  -- docs: https://github.com/folke/snacks.nvim/blob/main/docs/terminal.md
  vim.keymap.set({'n', 't'}, '<C-g>', function()
    Snacks.terminal.toggle()
  end, {desc = 'Toggle terminal window'})

  -- Close while preserving window layout
  -- docs: https://github.com/folke/snacks.nvim/blob/main/docs/bufdelete.md
  vim.keymap.set('n', '<leader>bc', function()
    Snacks.bufdelete()
  end, {desc = 'Close buffer'})

  -- Fuzzy finders
  -- docs: https://github.com/folke/snacks.nvim/blob/main/docs/picker.md
  vim.keymap.set('n', '<leader><space>', function() Snacks.picker('buffers') end, {desc = 'Search open files'})
  vim.keymap.set('n', '<leader>ff', function() Snacks.picker('files') end, {desc = 'Search all files'})
  vim.keymap.set('n', '<leader>fh', function() Snacks.picker('recent') end, {desc = 'Search file history'})
  vim.keymap.set('n', '<leader>fg', function() Snacks.picker('grep') end, {desc = 'Search in project'})
  vim.keymap.set('n', '<leader>fd', function() Snacks.picker('diagnostics') end, {desc = 'Search diagnostics'})
  vim.keymap.set('n', '<leader>fs', function() Snacks.picker('lines') end, {desc = 'Buffer local search'})
  vim.keymap.set('n', '<leader>u', function() Snacks.picker('undo') end, {desc = 'Undo history'})
  vim.keymap.set('n', '<leader>/', function() Snacks.picker('pickers') end, {desc = 'Search picker'})
  vim.keymap.set('n', '<leader>?', function() Snacks.picker('keymaps') end, {desc = 'Search keymaps'})
end)

