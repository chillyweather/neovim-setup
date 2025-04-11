return {
    'ThePrimeagen/vim-be-good',
    lazy = false, -- load on startup (optional)
    config = function()
        -- Optional keymaps
        vim.keymap.set('n', '<leader>vb', ':VimBeGood<CR>', { desc = 'Start VimBeGood' })
    end,
}
