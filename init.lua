require "user.plugins"
require "user.options"
require "user.keymap"
require "user.comment"
require "user.newLsp"
require "user.cmp"
require "user.telescope"
require "user.autopair"
require "user.gitsigns"
require "user.nvim-tree"
require "user.null-ls"
require "user.prettier"
require "user.lualine"
require "user.catppuccin"
require "user.bufferline"
require "user.treesitter"
require "user.copilot"

function _G.ReloadConfig()
  for name, _ in pairs(package.loaded) do
    if name:match('^user') then
      package.loaded[name] = nil
    end
  end

  vim.cmd('source $MYVIMRC')
end

print("Loaded config")
