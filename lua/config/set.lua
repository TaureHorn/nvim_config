vim.cmd("set guicursor=n-v-c-i:block")
vim.cmd("set mouse=")
vim.cmd("set termguicolors")

-- autoloads directory specific configs in a .nvim.lua file and attempts to do so securely
vim.cmd("set exrc")
vim.cmd("set secure")

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

-- adds register l to take visual selection and add a print statement base of the filetype
local print_visual_selection = vim.api.nvim_create_augroup("PrintVisualSelection", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
    group = print_visual_selection,
    desc = "set register to print visual selection based on filetype",
    callback = function ()
        local filetype = vim.bo.filetype
        local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)
        if filetype == 'javascript' then
            vim.fn.setreg('l', "yoconsole.log('" .. esc .. "pa', " .. esc .. "pa)" .. esc)
        elseif filetype == 'lua' then
            vim.fn.setreg('l', "yoprint('" .. esc .. "pa', " .. esc .. "pa)" .. esc)
        elseif filetype == 'sh' then
            vim.fn.setreg('l', 'yoecho "' .. esc .. 'pa $' .. esc .. 'pa"' .. esc)
        end
    end
})

-- COMMAND ALIASES
vim.cmd("call nvim_create_user_command('Hist', 'Noice fzf', {})")
vim.cmd("call nvim_create_user_command('Fz', 'FzfLua resume', {})")
vim.cmd("call nvim_create_user_command('Ls', 'LspInfo', {})")
vim.cmd("call nvim_create_user_command('Clip', '%y+', {})")

CP_Palette = {
    bg_red = '#a10036',
    blue = '#28ffff',
    green = '#1cd577',
    indigo = '#2570d6',
    orange = '#fd932d',
    purple = '#9c2bf7',
    red = '#ff0055',
    yellow = '#f3e600'
}
