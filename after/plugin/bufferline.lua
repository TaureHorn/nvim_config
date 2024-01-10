local normal = {
    bg = { attribute = "bg", highlight = "TabLineSel"},
    fg = { attribute = "fg", highlight = "TabLineSel"},
}
local inverted = {
    bg = { attribute = "bg", highlight = "PmenuSel"},
    fg = { attribute = "fg", highlight = "PmenuSel"},
}

require("bufferline").setup({
    options = {
        indicator = {
            icon = "█ ",
        },
        numbers = "ordinal",
        show_buffer_close_icons = false,
        show_buffer_icons = false,
        tab_size = 6,
        themable = true,
    },
    highlights = {
        -- inactive tab
        background = normal,
        fill = normal,
        numbers = normal,
        modified = normal,
        pick = normal,

        -- active tab
        buffer_selected = {
            bg = { attribute = "bg", highlight = "PmenuSel"},
            fg = { attribute = "fg", highlight = "PmenuSel"},
            italic = false,
        },
        numbers_selected = {
            bg = { attribute = "bg", highlight = "PmenuSel"},
            fg = { attribute = "fg", highlight = "PmenuSel"},
            italic = false,
        },
        modified_selected = inverted,
        pick_selected = inverted,
    }
})
