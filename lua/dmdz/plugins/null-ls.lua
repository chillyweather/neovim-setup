return {
    'nvimtools/none-ls.nvim',
    dependencies = {
        'nvimtools/none-ls-extras.nvim', -- Add required dependency [1][3]
    },
    config = function()
        local null_ls = require 'null-ls'

        null_ls.setup {
            sources = {
                -- Existing Go sources
                null_ls.builtins.formatting.gofmt,
                null_ls.builtins.formatting.goimports,
                null_ls.builtins.diagnostics.golangci_lint,

                -- New ESLint configuration
                require('none-ls.diagnostics.eslint_d').with {
                    condition = function(utils)
                        return utils.root_has_file 'eslint.config.js' -- ESLint v9+ config
                            or utils.root_has_file '.eslintrc' -- Legacy config formats
                            or utils.root_has_file '.eslintrc.json'
                            or utils.root_has_file '.eslintrc.yml'
                    end,
                },
            },

            on_attach = function(client)
                if client.server_capabilities.documentFormattingProvider then
                    -- Preserve Go-specific formatting
                    vim.api.nvim_create_autocmd('BufWritePre', {
                        pattern = '*.go',
                        callback = function()
                            vim.lsp.buf.format { async = false }
                        end,
                    })

                    -- Optional: Add formatting for other file types
                    vim.api.nvim_create_autocmd('BufWritePre', {
                        pattern = { '*.js', '*.ts', '*.jsx', '*.tsx' },
                        callback = function()
                            vim.lsp.buf.format { async = false }
                        end,
                    })
                end
            end,
        }
    end,
}
