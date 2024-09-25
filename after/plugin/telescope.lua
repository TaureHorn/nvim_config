local actions = require "telescope.actions"
require('telescope').setup({
    defaults = {
        layout_strategy = 'horizontal',
        layout_config = {
            horizontal = { height = 0.6, width = 0.6, preview_width = 0.7 }
        },
        mappings = {
            i = {
                ["<C-p>"] = actions.close,
            },
            n = {
                ["<C-p>"] = actions.close,
                ["<Esc>"] = actions.close,
                ["n"] = actions.move_selection_next,
                ["p"] = actions.move_selection_previous,
            },
        }
    },
    pickers = {
        colorscheme = {
            enable_preview = true
        }
    }
})
