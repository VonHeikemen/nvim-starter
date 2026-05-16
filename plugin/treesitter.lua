if vim.g.skip_plugins == 1 then
  return
end

MiniDeps.add({
  source = 'VonHeikemen/ts-enable.nvim',
  checkout = 'v2.x',
})

-- See :help ts-enable-config
vim.g.ts_enable = {
  auto_init = true,
  auto_install = true,
  highlights = true,
}

