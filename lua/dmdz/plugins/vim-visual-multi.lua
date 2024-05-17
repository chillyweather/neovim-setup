return {
    'mg979/vim-visual-multi',
    branch = 'master',
    config = function()
        vim.g.VM_leader = { '<Space>', ',' }
        vim.g.VM_maps = {
            ['Find Under'] = '<C-n>',
            ['Find Subword Under'] = '<C-n>',
            ['Select All'] = '<C-d>',
            ['Skip Region'] = '<C-x>',
            ['Remove Region'] = '<C-c>',
        }
    end,
}
