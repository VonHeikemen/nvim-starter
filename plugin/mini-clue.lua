if vim.g.skip_plugins == 1 then
  return
end

MiniDeps.now(function()
  -- See :help MiniClue.config
  local mini_clue = require('mini.clue')
  local gen_clues = mini_clue.gen_clues

  mini_clue.setup({
    window = {
      delay = 600,
      config = {
        width = 50,
      },
    },
    triggers = {
      {mode = 'n', keys = '['},
      {mode = 'n', keys = ']'},
      {mode = 'n', keys = 'g'},
      {mode = 'x', keys = 'g'},
      {mode = 'n', keys = 'z'},
      {mode = 'x', keys = 'z'},
      {mode = 'n', keys = '<C-w>'},
      {mode = 'i', keys = '<C-x>'},
      {mode = 'n', keys = '<leader>'},
      {mode = 'x', keys = '<leader>'},
    },
    clues = {
      gen_clues.g(),
      gen_clues.z(),
      gen_clues.windows(),
      gen_clues.builtin_completion(),
      {mode = 'n', keys = '<leader>f', desc = '+Fuzzy finders'},
      {mode = 'n', keys = '<leader>b', desc = '+Buffer'},
    }
  })
end)

