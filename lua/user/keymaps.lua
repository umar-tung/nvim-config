local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.keymap.set


-- Remap the space key to leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes --
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t"
-- command_mode = "c"

-- Normal --
-- Better window navigation 
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- NvimTree
keymap("n", "ft", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "sf", ":Telescope find_files<CR>", opts)
keymap("n", "sg", ":Telescope live_grep<CR>", opts)
keymap("n", "sp", ":Telescope projects<CR>", opts)
keymap("n", "sb", ":Telescope buffers<CR>", opts)

