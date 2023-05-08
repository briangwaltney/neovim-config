local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

cmp.setup({
  mapping = {
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ["<C-f>"] = function()
      if cmp.visible() then
        return cmp.close()
      end
      cmp.complete()
    end,
  }
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
