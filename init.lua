vim.loader.enable()

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup("plugins", {
    ui = {
        border = "rounded"
    }
})

require("keymaps")
require("cmp-config")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.termguicolors = true
