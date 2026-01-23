vim.loader.enable()

require("lazy").setup("plugins", {
    ui = {
        border = "rounded"
    }
})

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.termguicolors = true

