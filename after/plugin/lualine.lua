require("lualine").setup({
    options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' }
    },
    sections = {
        lualine_a = { { 'mode', padding = 3 }, { "fancy_macro", icon = "recording@" } },
        lualine_b = { { "fancy_cwd", icon = "" }, "filename", { "branch", }, },
        lualine_c = {},
        lualine_x = { { "datetime", style = "%H:%M %a %d %b" } },
        lualine_y = { "diagnostics", { "progress", padding = 3 }, },
        lualine_z = { "location", "selectioncount" }
    }
})
