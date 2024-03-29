vim.opt.guicursor = ""
vim.cmd("set mouse=")
vim.cmd("set cursorline")
vim.opt.signcolumn = "yes"
vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 33

vim.opt.updatetime = 50

vim.opt.incsearch = true

-- nvim-tree says not to netrw :((
vim.g.loaded_netrw = 1
vim.g.loaded_netrw_Plugin = 1
