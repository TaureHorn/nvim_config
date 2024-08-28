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
                winhighlight = { Normal = "Normal", FloatBorder = "@text.todo" },
            },
        },
        vsplit = {
            size = {
                width = 50
            },
        },
            },
    notify = {
        enabled = false
    },
    messages = {
        enabled = true,
        view = 'vsplit'
    }
})
