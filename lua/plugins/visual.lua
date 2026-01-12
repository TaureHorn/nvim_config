-- colorschemes
CP = "cyberpunk"
SH = "silverhand"
EL = "eldritch"
Matrix = "thematrix"

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
        vim.api.nvim_command("hi BlinkCmpDocSeparator guifg=#ff0055")
        vim.api.nvim_command("hi NoiceCmdlinePopupBorder guifg=#ff0055")
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

return {

    -- eldritch colorscheme
    {
        'eldritch-theme/eldritch.nvim',
        opts = {}
    },

    -- highlights color codes
    {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    },

    -- number column signifiers for folds
    {
        'yaocccc/nvim-foldsign',
        event = 'CursorHold',
        config = function()
            require('nvim-foldsign').setup()
        end
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = { char = '|' }
        },
    },

    -- status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { "meuter/lualine-so-fancy.nvim", 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("lualine").setup({
                options = {
                    component_separators = { left = '', right = '' },
                    section_separators = { left = '', right = '' }
                },
                sections = {
                    lualine_a = { { 'mode', padding = 3 }, { "fancy_macro", icon = "recording@" } },
                    lualine_b = { "filename", "branch" },
                    lualine_c = {},
                    lualine_x = { { "datetime", style = "%H:%M %a %d %b" } },
                    lualine_y = { "diagnostics", { "progress", padding = 3 }, },
                    lualine_z = { "location", "selectioncount" }
                }
            })
        end
    },

    -- noice ui
    {
        "folke/noice.nvim",
        dependencies = { "MunifTanjim/nui.nvim" },
        config = function()
            require("noice").setup({
                lsp = {
                    hover = {
                        enabled = false,
                    },
                    signature = {
                        enabled = false,
                    },
                },
                messages = {
                    enabled = true,
                    view = 'mini',
                },
                notify = {
                    enabled = false
                },
                views = {
                    cmdline_popup = {
                        border = {
                            style = "rounded",
                            padding = { 0, 0 },
                        },
                        position = {
                            row = 40,
                            col = "50%",
                        },
                        size = {
                            width = 100,
                            height = "auto",
                        },
                    },
                    mini = {
                        border = {
                            style = "rounded",
                            padding = { 0, 0 },
                        },
                        position = {
                            row = 0,
                        },
                        reverse = true,
                        timeout = 10000,
                        win_options = {
                            winhighlight = {
                                Normal = 'Pmenu'
                            }
                        }
                    },
                },

            })
        end
    },

    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            keywords = {
                NO = { alt = { "ERROR", "FAIL" }, color = "warning", icon = "" },
                YES = { alt = { "GOOD", "PASS" }, color = "yes", icon = "" },
                LEARN = { alt = { "WHAT" }, color = "misc", icon = "" }
            },
            colors = {
                error = { CP_Palette.orange },
                hint = { CP_Palette.purple },
                info = { CP_Palette.yellow },
                misc = { CP_Palette.blue },
                warning = { CP_Palette.red },
                yes = { CP_Palette.green }
            }
        }
    },

    { 'luisiacc/the-matrix.nvim' },

    -- main colorscheme
    {
        'thedenisnikulin/vim-cyberpunk',
        config = function()
            setDefault()
        end
    },

}
