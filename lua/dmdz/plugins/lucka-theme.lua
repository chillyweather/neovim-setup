return {
    "lucka",
    dir = vim.fn.stdpath("config") .. "/lua/dmdz/plugins/colors",
    lazy = false,
    priority = 1000,
    config = function()
        vim.api.nvim_command('colorscheme lucka')
    end,
}