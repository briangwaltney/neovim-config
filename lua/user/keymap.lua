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
keymap("n", "<leader>K", "<C-w>w", opts)

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


-- Reload vim after config change
vim.cmd('command! ReloadConfig lua ReloadConfig()')
keymap('n', '<Leader>v', '<Cmd>lua ReloadConfig()<CR>',opts)

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
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)


-- Telescope
keymap("n", "<leader>f", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>t", ":Telescope live_grep<CR>", opts)
keymap("n", "==", ":CocCommand prettier.formatFile<CR>:w<CR>", opts)


-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)
keymap("i", "kk", "<ESC>", opts)

-- Visual --
-- Fold
keymap("v", "<leader>fl", ":'<,'>fold<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
--[[ keymap("v", "<A-j>", ":m .+1<CR>==", opts) ]]
--[[ keymap("v", "<A-k>", ":m .-2<CR>==", opts) ]]
keymap("v", "p", '"_dP', opts)

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
