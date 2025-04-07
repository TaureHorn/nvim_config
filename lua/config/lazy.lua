-- INIT LAZY.NVIM

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    checker = { enabled = false },
    install = { colorscheme = { 'wildcharm' }, missing = true },
    spec = {
        { import = 'plugins' },
    },
    ui = {
        border = 'rounded',
        size = {
            height = 1,
            width = 1
        },
        title = ' LAZY.NVIM ',
        title_pos = 'center',
    },
})
