local Plugin = {'L3MON4D3/LuaSnip'}

function Plugin.config()
  -- See :help luasnip-loaders
  require('luasnip.loaders.from_vscode').lazy_load()
end

return Plugin
