require "user.options"
require "user.keymap"
require "user.plugins"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.autopair"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.null-ls"
require "user.prettier"
--[[ require "user.coc" ]]
require "user.treesitter"
require "user.lualine"
require "user.autocommands"
require "user.colorscheme"


function _G.ReloadConfig()
  for name,_ in pairs(package.loaded) do
    if name:match('^user') then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
end
