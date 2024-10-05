-- colorschemes
CP = "cyberpunk"
SH = "silverhand"
EL = "eldritch"
Bones = "voidbones"
Matrix = "thematrix"
Rose = "rosebones"

-- defaults
local DEFAULT_COLORSCHEME = CP
local DEFAULT_TRANSPARENCY = true

-- TODO

local function schemeSetter(input)
    local scheme = "colorscheme " .. input
    vim.cmd("set background=dark")
    vim.cmd("set termguicolors")
    vim.cmd("set cursorline")
    vim.cmd(scheme)
end

function Color(inputColor)
    schemeSetter(inputColor)
end

function Tcolor(inputColor)
    schemeSetter(inputColor)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

local function setDefault()
    if DEFAULT_TRANSPARENCY == true then
        Tcolor(DEFAULT_COLORSCHEME)
    elseif DEFAULT_TRANSPARENCY == false then
        Color(DEFAULT_COLORSCHEME)
    else
        error("Something went wrong setting the default colorscheme")
    end
end

setDefault()

function Highlighter()
    local colorscheme = vim.api.nvim_exec("colorscheme", true)
    if colorscheme == "cyberpunk" then
        vim.api.nvim_command("hi @comment.todo guibg=white gui=bold,italic")
        vim.api.nvim_command("hi Number guifg=#ff8d1f gui=italic")
    end
end

Highlighter()

