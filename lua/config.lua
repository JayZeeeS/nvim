local opt = vim.o

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.softtabstop = 4

opt.relativenumber = true
opt.number = true

opt.hlsearch = true
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8

opt.updatetime = 50

opt.colorcolumn = '100'



-- Remaps
local map = vim.keymap.set
map('n', '<leader>pv', vim.cmd.Ex)

map('n', '<leader>sv', vim.cmd.w)
map('n', '<leader>so', vim.cmd.so)

map('v', 'J', ":m '>+1'<CR>gv=gv")
map('v', 'K', ":m '<-2'<CR>gv=gv")

map('n', '<leader>y', "\"+y")
map('v', '<leader>y', "\"+y")
map('n', '<leader>Y', "\"+Y")
