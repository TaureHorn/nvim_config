-- colorschemes
CP = "cyberpunk"
SH = "silverhand"
EL = "eldritch"
Matrix = "thematrix"

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

-- defaults
local DEFAULT_COLORSCHEME = CP
local DEFAULT_TRANSPARENCY = true

local function schemeSetter(input)
    local scheme = "colorscheme " .. input
    vim.cmd("set background=dark")
    vim.cmd("set termguicolors")
    vim.cmd("set cursorline")
    vim.cmd(scheme)
end

function Highlighter()
    local colorscheme = vim.api.nvim_exec("colorscheme", true)
    if colorscheme == "cyberpunk" then
        vim.api.nvim_command("hi Number guifg=#ff8d1f")
        vim.api.nvim_command("hi Cursorline guifg=#ffffff guibg=#ff0055")
        vim.api.nvim_command("hi FloatBorder guifg=#ff0055")
        vim.api.nvim_command("hi NoiceCmdlinePopupBorder guifg=#ff0055")
        vim.api.nvim_command("hi TelescopeBorder guifg=#ff0055")
        vim.api.nvim_command("hi WinSeparator guifg=#a10036")
    end
end

function Color(inputColor)
    if not inputColor then
        schemeSetter(DEFAULT_COLORSCHEME)
    else
        schemeSetter(inputColor)
    end
    Highlighter()
end

function Trans()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function Tcolor(inputColor)
    Color(inputColor)
    Trans()
end

local function setDefault()
    if DEFAULT_TRANSPARENCY == true then
        Tcolor()
    elseif DEFAULT_TRANSPARENCY == false then
        Color()
    else
        error("Something went wrong setting the default colorscheme")
    end
end
setDefault()


