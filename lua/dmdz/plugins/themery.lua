return {
    {
        'zaldih/themery.nvim',
        lazy = false, -- Load during startup since it's a colorscheme manager
        priority = 1000,
        config = function()
            require('themery').setup {
                -- Define your list of themes
                themes = {
                    {
                        name = 'Github Light',
                        colorscheme = 'github_light',
                    },
                    {
                        name = 'Lucario',
                        colorscheme = 'lucario',
                    },
                    {
                        name = 'Atom',
                        colorscheme = 'atom',
                    },
                    {
                        name = 'NordFox',
                        colorscheme = 'nordfox',
                    },
                    {
                        name = 'Nord',
                        colorscheme = 'nord',
                    },
                    {
                        name = 'Catppuccin Frappe',
                        colorscheme = 'catppuccin-frappe',
                    },
                    {
                        name = 'Github Dark',
                        colorscheme = 'github_dark',
                    },
                    {
                        name = 'Tokyonight Storm',
                        colorscheme = 'tokyonight-storm',
                        style = 'storm',
                    },
                    {
                        name = 'NightFox',
                        colorscheme = 'nightfox',
                    },
                    {
                        name = 'Tokyonight Night',
                        colorscheme = 'tokyonight-night',
                        style = 'night',
                    },
                    {
                        name = 'Catppuccin Mocha',
                        colorscheme = 'catppuccin-mocha',
                    },
                    {
                        name = 'Kanagawa',
                        colorscheme = 'kanagawa-wave',
                    },
                    {
                        name = 'sonokai',
                        colorscheme = 'sonokai',
                        style = 'atlantis',
                    },
                    {
                        name = 'luca',
                        colorscheme = 'luca',
                    },
                },

                -- Theme switching settings
                live_preview = true, -- live preview when cycling through themes
                remember = true, -- remember last used theme

                -- Keymaps for theme management
                keymaps = {
                    next = '<leader>tn', -- cycle to next theme
                    previous = '<leader>tp', -- cycle to previous theme
                    toggle = '<leader>tt', -- toggle theme browser
                },

                -- Status line integration
                statusline = {
                    separator = '->', -- separator between theme name and style
                },
            }

            -- Optional: Add commands for quick access
            vim.api.nvim_create_user_command('ThemeryPicker', function()
                require('themery').pick()
            end, {})

            -- Optional: Add theme-specific settings
            vim.api.nvim_create_autocmd('ColorScheme', {
                pattern = '*',
                callback = function()
                    -- Customize colors after theme loads
                    -- Example: Make the line numbers more visible
                    vim.cmd [[highlight LineNr guifg=#666666]]
                end,
            })
        end,
        -- Add dependencies for your themes
        dependencies = {
            'folke/tokyonight.nvim',
            'catppuccin/nvim',
            'shaunsingh/nord.nvim',
            'rebelot/kanagawa.nvim',
            'raphamorim/lucario',
            'nordtheme/vim',
            'gregsexton/Atom',
            'projekt0n/github-nvim-theme',
            'EdenEast/nightfox.nvim',
            'sainnhe/sonokai',
            'chillyweather/luca.vim',
            -- Add other theme plugins as needed
        },
    },
}
