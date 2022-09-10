local colorscheme = "ayu-mirage"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end


vim.cmd "hi LineNr guifg=#FFCC66"
vim.cmd "hi LineNrAbove guifg=#CBCCC6"
vim.cmd "hi LineNrBelow guifg=#CBCCC6"
vim.cmd "hi Comment guifg=#8f9dac gui=italic"
vim.cmd "hi CocUnusedHighlight guibg=#1F2430"
vim.cmd "hi NonText guifg=#FFFFFF"
vim.cmd "hi SpecialKey guifg=#8f9dac"
vim.cmd "hi typescriptVariable guifg=#FFAD66"
vim.cmd "hi typescriptMember guifg=fg"
vim.cmd "hi typescriptBinaryOp guifg=#F29E74"
vim.cmd "hi typescriptUnaryOp guifg=#F29E74"
vim.cmd "hi typescriptDotNotation guifg=#F29E74"
vim.cmd "hi typescriptTypeAnnotation guifg=#F29E74"
vim.cmd "hi typescriptFuncType guifg=#DFBFFF"
vim.cmd "hi typescriptObjectLabel guifg=fg"
vim.cmd "hi typescriptFuncCallArg guifg=#DFBFFF"
vim.cmd "hi tsxTag guifg=#73D0FF"  -- Blue
vim.cmd "hi tsxTagName guifg=#73D0FF"  -- Blue
vim.cmd "hi tsxAttrib guifg=#FFD173"
vim.cmd "hi typescriptIdentifierName guifg=#DFBFFF"
vim.cmd "hi tsxIntrinsicTagName guifg=#73D0FF"
vim.cmd "hi tsxCloseTag guifg=#73D0FF"
vim.cmd "hi MatchParen guifg=bg guibg=#F29E74"
vim.cmd "hi Search guibg=#1f2430 guifg=#d41083"
--[[ vim.cmd "hi SpellBad gui=underline guifg=#FFA759" ]]

--[[ accent = "#FFCC66", yellow ]]
--[[   bg = "#1F2430", dark grey ]]
--[[   black = "#000000", ]]
--[[   comment = "#8f9dac",light grey ]]
--[[   constant = "#D4BFFF", ]]
--[[   entity = "#73D0FF", ]]
--[[   error = "#FF3333", ]]
--[[   fg = "#CBCCC6",almost white ]]
--[[   fg_idle = "#607080", ]]
--[[   func = "#FFD580", ]]
--[[   generate = <function 1>, ]]
--[[   guide_active = "#576070", ]]
--[[   guide_normal = "#383E4C", ]]
--[[   gutter_active = "#5F687A", ]]
--[[   gutter_normal = "#404755", ]]
--[[   keyword = "#FFA759", ]]
--[[   line = "#191E2A", ]]
--[[   markup = "#F28779", ]]
--[[   operator = "#F29E74", ]]
--[[   panel_bg = "#232834", ]]
--[[   panel_border = "#101521", ]]
--[[   panel_shadow = "#141925", ]]
--[[   regexp = "#95E6CB", ]]
--[[   selection_bg = "#33415E", ]]
--[[   selection_border = "#232A4C", ]]
--[[   selection_inactive = "#323A4C", ]]
--[[   special = "#FFE6B3", ]]
--[[   string = "#BAE67E", ]]
--[[   tag = "#5CCFE6", ]]
--[[   ui = "#707A8C", ]]
--[[   vcs_added = "#A6CC70", ]]
--[[   vcs_added_bg = "#313D37", ]]
--[[   vcs_modified = "#77A8D9", ]]
--[[   vcs_removed = "#F27983", ]]
--[[   vcs_removed_bg = "#3E373A", ]]
--[[   warning = "#FFA759", ]]
--[[   white = "#FFFFFF" ]]
