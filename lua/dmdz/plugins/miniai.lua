return {
    'echasnovski/mini.ai',
    version = '*',
    event = 'VeryLazy',
    config = function()
        local ai = require 'mini.ai'
        ai.setup {
            n_lines = 500,
            custom_textobjects = {
                -- Function textobject
                f = ai.gen_spec.treesitter {
                    a = '@function.outer',
                    i = '@function.inner',
                },
                -- Class textobject
                c = ai.gen_spec.treesitter {
                    a = '@class.outer',
                    i = '@class.inner',
                },
                -- Block textobject
                b = ai.gen_spec.treesitter {
                    a = '@block.outer',
                    i = '@block.inner',
                },
            },
        }
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
    },
    mappings = {
        around = 'a',
        inside = 'i',
        around_next = 'an',
        inside_next = 'in',
        around_last = 'al',
        inside_last = 'il',
        goto_left = 'g[',
        goto_right = 'g]',
    },
}
