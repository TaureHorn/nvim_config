require("noice").setup({
    views = {
        cmdline_popup = {
            border = {
                style = "single",
                padding = { 0, 0 },
            },
            position = {
                row = 40,
                col = "50%",
            },
            size = {
                width = 50,
                height = "auto",
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
                winhighlight = { Normal = "Normal", FloatBorder = "TabLineSel" },
            },
        },
    },
})

require("notify").setup({
    background_colour = '#000000',
    render = "minimal",
    timeout = 3000,
    top_down = false,
})
