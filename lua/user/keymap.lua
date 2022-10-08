local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "<leader>'", ":TSHighlightCapturesUnderCursor<CR>", opts)
keymap("n", "<ESC>", "<ESC>:w<CR>", opts)
keymap("n", "<leader>w", ":bd<CR>", opts)
keymap("n", "0", "^", opts)

-- Harpoontang
keymap("n", "<leader>0", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "<leader>9", ":lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "<F1>", ":lua require('harpoon.ui').nav_file(1)<CR>", opts)
keymap("n", "<F2>", ":lua require('harpoon.ui').nav_file(2)<CR>", opts)
keymap("n", "<F3>", ":lua require('harpoon.ui').nav_file(3)<CR>", opts)
keymap("n", "<F4>", ":lua require('harpoon.ui').nav_file(4)<CR>", opts)
keymap("n", "<F5>", ":lua require('harpoon.ui').nav_file(5)<CR>", opts)
keymap("n", "<F6>", ":lua require('harpoon.ui').nav_file(6)<CR>", opts)
keymap("n", "<F7>", ":lua require('harpoon.ui').nav_file(7)<CR>", opts)

-- Undotree
keymap("n", "<leader>U", ":UndotreeToggle<CR>", opts)


-- RSTD

keymap("n", "f", "u", opts)
keymap("n", "u", "a", opts)
keymap("n", "U", "A", opts)
keymap("n", "l", "i", opts)
keymap("n", "L", "I", opts)
keymap("x", "a", "j", opts)
keymap("x", "i", "k", opts)
keymap("x", "e", "l", opts)
keymap("x", "n", "h", opts)
keymap("v", "a", "j", opts)
keymap("v", "i", "k", opts)
keymap("v", "e", "l", opts)
keymap("v", "n", "h", opts)
keymap("n", "a", "j", opts)
keymap("n", "i", "k", opts)
keymap("n", "e", "l", opts)
keymap("n", "n", "h", opts)


keymap("n", "m", "n", opts)
keymap("n", "M", "N", opts)



-- Dvorak improvements


--[[ keymap("x", "t", "j", opts) ]]
--[[  keymap("x", "c", "k", opts) ]]
--[[  keymap("x", "n", "l", opts) ]]
--[[  keymap("v", "t", "j", opts) ]]
--[[  keymap("v", "c", "k", opts) ]]
--[[  keymap("v", "n", "l", opts) ]]
--[[  keymap("n", "t", "j", opts) ]]
--[[  keymap("n", "c", "k", opts) ]]
--[[  keymap("n", "n", "l", opts) ]]
--[[  keymap("n", "<S-l>", "<S-n>", opts) ]]
--[[]]
--[[ keymap("n", "j", "t", opts) ]]
--[[ keymap("n", "k", "c", opts) ]]
--[[ keymap("n", "l", "n", opts) ]]
--[[ keymap("v", "j", "t", opts) ]]
--[[ keymap("v", "k", "c", opts) ]]
--[[ keymap("v", "l", "n", opts) ]]
--[[ keymap("x", "j", "t", opts) ]]
--[[ keymap("x", "k", "c", opts) ]]
--[[ keymap("x", "l", "n", opts) ]]
--[[]]
--[[ keymap("n", "kj", "ct", opts) ]]
--[[ keymap("n", "kk", "cc", opts) ]]
--[[ keymap("n", "ka", "ca", opts) ]]
--[[ keymap("n", "kp", "cp", opts) ]]
--[[ keymap("n", "<s-k>", "<s-c>", opts) ]]

-- Reload vim after config change
vim.cmd('command! ReloadConfig lua ReloadConfig()')
keymap('n', '<Leader>@', '<Cmd>lua ReloadConfig()<CR>', opts)

-- better explorer size
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- clear search
keymap("n", "<leader>/", ":noh<CR>", opts)
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-e>", ":bnext<CR>", opts)
keymap("n", "<S-n>", ":bprevious<CR>", opts)


-- Telescope
keymap("n", "<leader>f", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>t", ":Telescope live_grep<CR>", opts)
keymap("n", "==", ":Format<CR>", opts)
keymap("n", "<leader>==", ":Prettier<CR>", opts)


-- Insert --

-- Visual --
-- Fold
keymap("v", "<leader>fl", ":'<,'>fold<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
--[[ keymap("v", "<A-j>", ":m .+1<CR>==", opts) ]]
--[[ keymap("v", "<A-k>", ":m .-2<CR>==", opts) ]]

-- Visual Block --
-- Move text up and down
--[[ keymap("x", "J", ":move '>+1<CR>gv-gv", opts) ]]
--[[ keymap("x", "K", ":move '<-2<CR>gv-gv", opts) ]]
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
