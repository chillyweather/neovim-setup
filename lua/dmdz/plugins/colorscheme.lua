-- colorscheme.lua
return {
    {
        'neanias/everforest-nvim',
        version = false,
        lazy = false,
        priority = 1000, -- Make sure to load this before all other start plugins
        config = function()
            --vim.cmd 'colorscheme everforest'

            vim.g.everforest_background = 'hard'
        end,
    },
    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        config = function()
            require('github-theme').setup {
                -- ...
            }
        end,
    },
    {
        'gregsexton/Atom',
        config = function()
            -- Apply the Lucario colorscheme
            -- vim.cmd.colorscheme 'atom'
        end,
    },
    {
        'dmcgrady/vim-lucario',
        config = function()
            -- Apply the Lucario colorscheme
            vim.cmd.colorscheme 'lucario'
        end,
    },
    {
        'ajmwagar/vim-deus',
        config = function()
            -- vim.cmd.colorscheme 'deus'
        end,
        opts = {},
    },
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'rebelot/kanagawa.nvim',
        name = 'kanagawa',
        config = function()
            require('kanagawa').setup {
                background = { -- map the value of 'background' option to a theme
                    dark = 'wave', -- try "dragon" !
                    light = 'lotus',
                },
            }
        end,
    },
}
