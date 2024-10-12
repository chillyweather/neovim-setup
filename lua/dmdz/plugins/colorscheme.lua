-- colorscheme.lua
return {
    {
        'neanias/everforest-nvim',
        priority = 1000, -- Make sure to load this before all other start plugins
        config = function()
            -- Set the color scheme to everforest
            vim.cmd 'colorscheme everforest'

            -- Optional: Additional configuration for the theme
            -- Example: vim.g.everforest_background = 'soft'
        end,
    },
}
