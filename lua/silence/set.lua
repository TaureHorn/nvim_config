vim.cmd("set guicursor=n-v-c-i:block")
vim.cmd("set mouse=")
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


-- make cursorline only on active split/window
local toggle_options = vim.api.nvim_create_augroup("ToggleOptions", { clear = true })
vim.api.nvim_create_autocmd("WinLeave", {
	group = toggle_options,
	desc = "unset cursorline",
	command = "lua vim.opt.cursorline = false",
})
vim.api.nvim_create_autocmd("WinEnter", {
	group = toggle_options,
	desc = "set cursorline",
	command = "lua vim.opt.cursorline = true",
})

-- COMMAND ALIASES
vim.cmd("call nvim_create_user_command('Hist', 'NoiceHistory', {})")
vim.cmd("call nvim_create_user_command('Ts', 'Telescope resume', {})")
vim.cmd("call nvim_create_user_command('Ft', 'FloatermNew', {})")
vim.cmd("call nvim_create_user_command('Ls', 'LspInfo', {})")

-- these next two are just kinda gimmicks lol
vim.cmd("call nvim_create_user_command('Hex', '%!xxd', {})")
vim.cmd("call nvim_create_user_command('Unhex', '%!xxd -r', {})")

