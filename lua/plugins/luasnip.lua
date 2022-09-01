local ok, luasnip_loaders = pcall(require, 'luasnip.loaders.from_vscode')
if not ok then return end

-- See :help luasnip-loaders
luasnip_loaders.lazy_load()

