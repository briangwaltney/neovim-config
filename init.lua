require "user.options"
require "user.keybinds"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"

function _G.ReloadConfig()
  for name,_ in pairs(package.loaded) do
    if name:match('^user') then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
end
