require("noice").setup({
    views = {
        cmdline_popup = {
            border = {
                style = "none",
                padding = { 1, 0 },
            },
            position = {
                row = 40,
                col = "50%",
            },
            size = {
                width = 100,
                height = "auto",
            },
            win_options = {
                cursorline = true
            },
        },
        mini = {
            align = 'mesage-right',
            border = {
                style = "none",
                padding = { 1, 0 },
            },
            position = {
                row = 0,
            },
            reverse = false,
            size = {
                width = "auto",
                height = "auto",
            },
            timeout = 10000,
            win_options = {
                winhighlight = {
                    Normal = "@boolean",
                    FloatBorder = "@boolean"
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
        view = 'mini'
    }
})

