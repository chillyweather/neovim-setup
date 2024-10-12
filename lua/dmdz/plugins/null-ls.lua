return {
    'nvimtools/none-ls.nvim',
    config = function()
        local null_ls = require 'null-ls'

        -- Setup null-ls for Go
        null_ls.setup {
            sources = {
                -- Formatter for Go
                null_ls.builtins.formatting.gofmt, -- Standard gofmt

                -- You can use goimports as an alternative:
                null_ls.builtins.formatting.goimports, -- Adds missing imports & formats

                -- Linter for Go
                null_ls.builtins.diagnostics.golangci_lint, -- Golangci-lint for linting
            },

            -- Optional: Automatically format Go files on save
            on_attach = function(client)
                if client.server_capabilities.documentFormattingProvider then
                    vim.api.nvim_create_autocmd('BufWritePre', {
                        pattern = '*.go',
                        callback = function()
                            vim.lsp.buf.format { async = false }
                        end,
                    })
                end
            end,
        }
    end,
}
