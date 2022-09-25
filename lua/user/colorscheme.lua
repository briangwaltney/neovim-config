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
vim.cmd "hi Folded guifg=#DFBFFF"
--[[ vim.cmd "hi @tag.attribute guifg=#FFCC66" ]]
vim.cmd "hi @tag guifg=#73D0FF"
vim.cmd "hi @constructor guifg=#73D0FF"
vim.cmd "hi @tag.delimiter guifg=#73D0FF"
vim.cmd "hi @type guifg=#FF785A"
vim.cmd "hi @type.builtin guifg=#FF785A"
vim.cmd "hi @parameter guifg=#DFBFFF"
--[[ vim.cmd "hi @property guifg=fg" ]]

vim.cmd "hi MatchParen guibg=#000000"
--[[ vim.cmd "hi Search guibg=#1f2430 guifg=#d41083" ]]
--[[ vim.cmd "hi SpellBad gui=underline guifg=#FFA759" ]]


-- fg = light grey normal text
-- bg = dark grey
-- blue = 73D0FF
-- purple = DFBFFF
-- orange = F29E74
-- yellow = FFCC66
-- red = FF785A
