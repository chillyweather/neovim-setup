return {
    'mbbill/undotree',
    event = 'VeryLazy',
    cmd = 'UndotreeToggle',
    keys = {
        { '<leader>u', '<cmd>UndotreeToggle<cr>', desc = 'Toggle Undotree' },
    },
    config = function()
        vim.g.undotree_WindowLayout = 2
        vim.g.undotree_SplitWidth = 40
        vim.g.undotree_DiffpanelHeight = 10
        vim.g.undotree_SetFocusWhenToggle = 1
        vim.g.undotree_ShortIndicators = 1
        vim.g.undotree_DiffAutoOpen = 1
        vim.g.undotree_RelativeTimestamp = 1
        vim.g.undotree_HelpLine = 0
        vim.g.undotree_TreeNodeShape = '●'
        vim.g.undotree_TreeVertShape = '│'
        vim.g.undotree_TreeSplitShape = '╱'
        vim.g.undotree_TreeReturnShape = '╲'

        -- Set undotree directory
        vim.opt.undodir = vim.fn.stdpath 'data' .. '/undodir'
        vim.opt.undofile = true
    end,
}
