local mini = {}

mini.branch = 'main'
mini.packpath = vim.fn.stdpath('data') .. '/site'

local deps_path = mini.packpath .. '/pack/deps'
local mini_path = deps_path .. '/start/mini.nvim'

vim.g.skip_plugins = 1
vim.env.MINIDEPS = deps_path

if not vim.uv.fs_stat(mini_path) then
  print('Installing mini.nvim....')
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/nvim-mini/mini.nvim',
    string.format('--branch=%s', mini.branch),
    mini_path
  })

  vim.cmd('packadd mini.nvim | helptags ALL')
end

local ok, MiniDeps = pcall(require, 'mini.deps')
if not ok then
  return
end

MiniDeps.setup({
  path = {
    package = mini.packpath,
  },
})

MiniDeps.add({
  source = 'nvim-mini/mini.nvim',
  checkout = mini.branch,
})

-- Enhance vim.notify before loading the rest of the plugins
-- See :help MiniNotify.config
require('mini.notify').setup({
  lsp_progress = {
    enable = false,
  },
})

vim.g.skip_plugins = 0

