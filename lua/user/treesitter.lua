local configs = require("nvim-treesitter.configs")
local contextConfig = require("treesitter-context")
require('nvim-ts-autotag').setup()
configs.setup {
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
  rainbow={
    enable = true,
    extended_mode = false,
    --[[ max_file_lines = nil, ]]
    --[[ colors = { ]]
    --[[   '#3cb6f4', ]]
    --[[   '#c284ff', ]]
    --[[   '#f17f46', ]]
    --[[ } ]]
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  autotag = {
    enable = true
  }
}

contextConfig.setup{
  max_lines=0,
  enable = true
}
