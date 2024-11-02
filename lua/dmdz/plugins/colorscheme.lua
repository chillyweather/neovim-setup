-- colorscheme.lua
return {
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
        'chillyweather/atomic-cs',
        name = 'chilly weather',
        config = function() end,
    },
    {
        'gregsexton/Atom',
        config = function()
            -- Apply the Lucario colorscheme
            vim.cmd.colorscheme 'atom'
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
}
