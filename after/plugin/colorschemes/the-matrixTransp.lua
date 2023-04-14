function EnterTheMatrix() 
    vim.cmd("colorscheme thematrix")
    vim.cmd("set termguicolors")

    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

    vim.opt.cursorline = true
    vim.opt.guicursor = ""
end
