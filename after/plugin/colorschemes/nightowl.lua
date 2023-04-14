function NightOwl()
    vim.cmd("colorscheme night-owl")
    vim.cmd("set termguicolors")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    vim.opt.cursorline = true
    vim.opt.guicursor = ""

end
