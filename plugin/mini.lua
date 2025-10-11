if vim.g.skip_plugins == 1 then
  return
end

MiniDeps.now(function()
  -- See :help MiniStatusline.config
  vim.o.showmode = false
  require('mini.statusline').setup({use_icons = true})

  -- See :help MiniComment.config
  require('mini.comment').setup({})

  -- See :help MiniSnippets.config
  require('mini.snippets').setup({})

  -- See :help MiniGit.config
  require('mini.git').setup({})

  -- See :help MiniDiff.config
  require('mini.diff').setup({
    view = {
      style = 'sign',
      signs = {
        add = '▎',
        change = '▎',
        delete = '➤',
      },
    },
  })
end)

