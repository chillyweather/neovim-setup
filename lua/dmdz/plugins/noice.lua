return {
    {
        'folke/noice.nvim',
        event = 'VeryLazy', -- Load only when needed to improve startup time
        config = function()
            require('noice').setup {
                -- Optional configuration
                lsp = {
                    override = {
                        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
                        ['vim.lsp.util.stylize_markdown'] = true,
                        ['cmp.entry.get_documentation'] = true,
                    },
                },
                presets = {
                    bottom_search = true, -- moves the search bar to the bottom
                    command_palette = true, -- command palette UI
                    long_message_to_split = true, -- long messages to split buffer
                    inc_rename = false, -- disable if using inc-rename.nvim
                    lsp_doc_border = true, -- add border to LSP hover docs and signature help
                },
            }
        end,
        dependencies = {
            'MunifTanjim/nui.nvim',
            'rcarriga/nvim-notify',
        },
    },
}
