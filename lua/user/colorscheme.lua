local colorscheme = "ayu-mirage"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

vim.cmd "hi LineNr guifg=#CBCCC6"
vim.cmd "hi Comment guifg=#C5D9FF"
vim.cmd "hi Visual guibg=#1c547d"
