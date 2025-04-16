vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Directory navigation
keymap.set("n", "<leader>e", ":Neotree toggle<CR>", opts)

-- Pane navigation
-- keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate left
-- keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate down
-- keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate up
-- keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate right

-- Window management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split horizontally

-- Bufferline
keymap.set("n", "<Tab>", ":bn<CR>", opts)
keymap.set("n", "<S-Tab>", ":bp<CR>", opts)

-- Term toggle
keymap.set("n", "<leader>t", ":terminal<CR>", opts)
