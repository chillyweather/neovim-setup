-- set leader key to space
vim.g.mapleader = ' '

local keymap = vim.keymap -- for conciseness

---------------- Navigation remap ------------------
-- Remap k to gk and j to gj
keymap.set('n', 'k', 'gk', { noremap = true })
keymap.set('n', 'j', 'gj', { noremap = true })

-- Reverse mapping: gk to k and gj to j
keymap.set('n', 'gk', 'k', { noremap = true })
keymap.set('n', 'gj', 'j', { noremap = true })

---------------- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

-- clear search highlights
keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })

-- delete single character without copying into register
keymap.set('n', 'x', '"_x')

-- increment/decrement numbers
keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number' }) -- increment
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' }) -- decrement

-- window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' }) -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' }) -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' }) -- make split windows equal width & height
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' }) -- close current split window
keymap.set('n', '<leader>tt', '<cmd>Themery<CR>', { desc = 'Open Themery' }) -- close current split window
keymap.set('n', '<leader>ll', '<cmd>Lazy<CR>', { desc = 'Open Lazy' }) -- close current split window

keymap.set('n', '<leader>rm', 'gg"_dG', { noremap = true, silent = true, desc = 'Delete all content without copying' })
