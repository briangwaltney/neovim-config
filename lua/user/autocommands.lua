local augroup = vim.api.nvim_create_augroup
MrBigGroup = augroup('mrBig', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd({"BufWritePre"}, {
    group = MrBigGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
