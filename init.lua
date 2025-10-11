-- This function makes possible for us to "reload"
-- our modules using `:source $MYVIMRC` command
local function load(mod)
  package.loaded[mod] = nil
  require(mod)
end

load('user.settings')
load('user.commands')
load('user.keymaps')
load('user.deps')

