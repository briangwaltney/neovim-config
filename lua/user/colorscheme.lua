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
--[[ vim.cmd "hi typescriptVariable guifg=#FFAD66" ]]
--[[ vim.cmd "hi typescriptMember guifg=fg" ]]
--[[ vim.cmd "hi typescriptBinaryOp guifg=#F29E74" ]]
--[[ vim.cmd "hi typescriptUnaryOp guifg=#F29E74" ]]
--[[ vim.cmd "hi typescriptDotNotation guifg=#F29E74" ]]
--[[ vim.cmd "hi typescriptTypeAnnotation guifg=#F29E74" ]]
--[[ vim.cmd "hi typescriptFuncType guifg=#DFBFFF" ]]
--[[ vim.cmd "hi typescriptObjectLabel guifg=fg" ]]
--[[ vim.cmd "hi typescriptFuncCallArg guifg=#DFBFFF" ]]
--[[ vim.cmd "hi typescriptArrowFunc guifg=#F29E74" ]]
--[[ vim.cmd "hi tsxTag guifg=#73D0FF"  -- Blue ]]
--[[ vim.cmd "hi tsxTagName guifg=#73D0FF"  -- Blue ]]
--[[ vim.cmd "hi tsxAttrib guifg=#FFD173" ]]
--[[ vim.cmd "hi typescriptIdentifierName guifg=#DFBFFF" ]]
--[[ vim.cmd "hi tsxIntrinsicTagName guifg=#73D0FF" ]]
--[[ vim.cmd "hi tsxCloseTag guifg=#73D0FF" ]]
vim.cmd "hi MatchParen guibg=#000000"
--[[ vim.cmd "hi Search guibg=#1f2430 guifg=#d41083" ]]
--[[ vim.cmd "hi SpellBad gui=underline guifg=#FFA759" ]]


-- fg = light grey normal text
-- bg = dark grey
-- blue = 73D0FF
-- purple = DFBFFF
-- orange = F29E74
-- yellow = FFCC66

