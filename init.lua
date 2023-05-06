 require "user.options"
 require "user.hop"
 require "user.keymap"
 require "user.plugins"
 require "user.cmp"
 require "user.newLsp"
 require "user.telescope"
 require "user.autopair"
 require "user.comment"
 require "user.gitsigns"
 require "user.nvim-tree"
 require "user.null-ls"
 require "user.prettier"
 require "user.lualine"
 require "user.catppuccin"
 require "user.bufferline"
 require "user.treesitter"
 require "user.lspkind"




function _G.ReloadConfig()
for name,_ in pairs(package.loaded) do
  if name:match('^user') then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
 end

 print("Loaded config")
