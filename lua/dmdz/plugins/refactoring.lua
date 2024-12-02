return {
    'ThePrimeagen/refactoring.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-treesitter/nvim-treesitter',
    },
    lazy = false,
    config = function()
        require('refactoring'):setup()

        -- Visual mode mappings for extraction
        vim.keymap.set('x', '<leader>re', function()
            require('refactoring').refactor 'Extract Function'
        end)

        -- Extract to separate file
        vim.keymap.set('x', '<leader>rf', function()
            require('refactoring').refactor 'Extract Function To File'
        end)

        -- Quick refactoring prompt
        vim.keymap.set({ 'n', 'x' }, '<leader>rr', function()
            require('refactoring'):select_refactor()
        end)
    end,
}
