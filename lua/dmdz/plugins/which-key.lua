return {
    'folke/which-key.nvim',
    event = 'VeryLazy', -- load after the rest of your keymaps
    opts = {
        ------------------------------------------------------------------
        -- 1. use one of the new presets – they all draw a floating window
        ------------------------------------------------------------------
        preset = 'modern', -- "classic", "modern" or "helix"

        ------------------------------------------------------------------
        -- 2. window-level tweaks
        ------------------------------------------------------------------
        win = {
            border = 'rounded', -- any :h nvim_open_win border
            -- row/col accept absolute numbers *or* 0-1 floats (percentage)
            row = 0.95, -- 0.0 = top, 0.5 = centre, 1.0 = bottom
            col = 0.99, -- 0.0 = left, 0.5 = centre, 1.0 = right
            width = 0.25,
            no_overlap = true, -- nudge the popup down if it covers the cursor
            padding = { 1, 2 }, -- top/-bottom, left/-right
            zindex = 1000,
            -- winblend can be set here too if you want transparency
        },

        ------------------------------------------------------------------
        -- 3. (optional) layout adjustments
        ------------------------------------------------------------------
        layout = {
            spacing = 3, -- space between columns
            width = {
                min = 20, -- don’t shrink below 20 cells
                max = 50, -- don’t grow beyond 50 cells ⟵ set your limit here
            },
        },
    },

    --------------------------------------------------------------------
    -- 4. initialise which-key with the opts declared above
    --------------------------------------------------------------------
    config = function(_, opts)
        local wk = require 'which-key'
        wk.setup(opts)
    end,
}
