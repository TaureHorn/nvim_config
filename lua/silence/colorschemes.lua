-- colorschemes
CP = "cyberpunk"
Bones = "voidbones"
Matrix = "thematrix"

-- defaults
local DEFAULT_COLORSCHEME = Matrix
local DEFAULT_TRANSPARENCY = true

local function schemeSetter(input)
    local scheme = "colorscheme " .. input
    vim.cmd("set background=dark")
    vim.cmd("set termguicolors")
    vim.opt.cursorline = true
    vim.opt.guicursor = ""
    vim.cmd(scheme)
end

function Color(inputColor)
    schemeSetter(inputColor)
end

function TColor(inputColor)
    schemeSetter(inputColor)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

local function setDefault()
    if DEFAULT_TRANSPARENCY == true then
        TColor(DEFAULT_COLORSCHEME)
    elseif DEFAULT_TRANSPARENCY == false then
        Color(DEFAULT_COLORSCHEME)
    else
        error("Something went wrong setting the default colorscheme")
    end
end

setDefault()
