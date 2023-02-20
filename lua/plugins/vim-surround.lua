local Plugin = {'tpope/vim-surround'}

Plugin.keys = {
  'ds',
  'cs',
  'cS',
  'ys',
  'yS',
  'yss',
  'ySs',
  'ySS',
  {'S', mode = 'x'},
  {'gS', mode = 'x'},
}

return Plugin
