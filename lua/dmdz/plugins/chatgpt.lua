return {
    'jackMort/ChatGPT.nvim',
    event = 'VeryLazy',
    config = function()
        require('chatgpt').setup {
            openai_params = {
                model = 'gpt-4o-mini',
                frequency_penalty = 0,
                presence_penalty = 0,
                max_tokens = 4095,
                temperature = 0.2,
                top_p = 0.1,
                n = 1,
            },
        }
        vim.keymap.set('n', '<Leader>cc', ':ChatGPT<CR>', { noremap = true, silent = true, desc = 'ChatGPT' })
        vim.keymap.set('n', '<Leader>ce', ':ChatGPTEditWithInstructions<CR>', { noremap = true, silent = true, desc = 'Edit with ChatGPT' })
    end,
    dependencies = {
        'MunifTanjim/nui.nvim',
        'nvim-lua/plenary.nvim',
        'folke/trouble.nvim',
        'nvim-telescope/telescope.nvim',
    },
}
