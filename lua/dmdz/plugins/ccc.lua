return {
    'uga-rosa/ccc.nvim',
    config = function()
        require('ccc').setup {
            highlighter = {
                auto_enable = true, -- Enable highlighting by default
                lsp = true, -- Enable LSP-based color detection
                filetypes = {}, -- List of filetypes to enable, leave empty for all
            },

            -- Set up color picker UI and behavior
            pickers = {
                hex = { mode = 'both' }, -- Allow both lowercase and uppercase HEX
                rgb = true, -- Enable RGB color picker
                hsl = true, -- Enable HSL color picker
                cmyk = false, -- Disable CMYK for simplicity
            },

            -- Customize input settings
            input = {
                enable = true, -- Enables the color input dialog
                hex = { input_case = 'upper' }, -- Set HEX input to uppercase
            },

            -- Customize highlighter appearance
            highlighter_opts = {
                blend = 0, -- Transparency of highlighted color
            },
        }

        vim.keymap.set('n', '<leader>cp', '<cmd>CccPick<cr>', { desc = 'Open Color Picker' })
    end,
    -- Load `ccc.nvim` only when needed (optional)
    -- cmd = { 'CccPick', 'CccHighlighterToggle' }, -- Lazy load on these commands
}
