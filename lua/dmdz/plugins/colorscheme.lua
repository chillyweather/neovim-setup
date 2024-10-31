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
            vim.cmd.colorscheme 'atom'
        end,
    },
    {
        'EdenEast/nightfox.nvim',
        config = function()
            require('nightfox').setup {
                groups = {
                    all = {
                        String = { style = 'italic' },
                    },
                },
            }

            -- Apply the colorscheme
            vim.cmd.colorscheme 'nightfox'
        end,
    },
    {
        'raphamorim/lucario',
        config = function()
            -- Apply the Lucario colorscheme
            -- vim.cmd.colorscheme 'lucario'
        end,
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
    {
        'shaunsingh/nord.nvim',
        config = function()
            -- Load Nord theme
            require('nord').set()
            -- vim.cmd 'colorscheme nord'
        end,
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine', -- Optional name to avoid using a full path
        config = function()
            require('rose-pine').setup {
                variant = 'moon', -- Options: "main", "moon", "dawn"
                dark_variant = 'moon', -- Variant to use in dark mode
            }
            -- vim.cmd("colorscheme rose-pine")
        end,
    },
}
