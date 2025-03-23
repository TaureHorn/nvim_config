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
        ---@module "ibl"
        ---@type ibl.config
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
                        align = 'mesage-right',
                        border = {
                            style = "rounded",
                            padding = { 0, 0 },
                        },
                        position = {
                            row = 0,
                        },
                        reverse = true,
                        size = {
                            width = "auto",
                            height = "auto",
                        },
                        timeout = 10000,
                        win_options = {
                            winhighlight = {
                                Normal = "@boolean",
                            },
                        },
                    },
                    popupmenu = {
                        relative = "editor",
                        position = {
                            row = 43,
                            col = "50%",
                        },
                        size = {
                            width = 50,
                            height = "auto",
                        },
                        border = {
                            style = "single",
                            padding = { 0, 0 },
                        },
                        win_options = {
                            winhighlight = {
                                Normal = "Pmenu",
                                FloatBorder = "Pmenu"
                            },
                        },
                    },
                    vsplit = {
                        size = {
                            width = 50
                        },
                        win_options = {
                            cursorline = false
                        }
                    },
                },
                notify = {
                    enabled = false
                },
                messages = {
                    enabled = true,
                    view = 'mini',
                }
            })
        end
    },

    { 'luisiacc/the-matrix.nvim' },

    -- main colorscheme
    {
        'thedenisnikulin/vim-cyberpunk',
        lazy = false,
        priorty = 1000
    },



}
