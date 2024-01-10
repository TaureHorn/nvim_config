require("lualine").setup ({
    options = {
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''}
    },
    sections = {
        lualine_a = {{'mode', padding = 3}},
        lualine_b = {"branch", "filename"},
        lualine_c = {"diagnostics"},
        lualine_x = {{"datetime", style = "%H:%M %a %d %b"}},
        lualine_z = {"location", "selectioncount"}
    }
})
