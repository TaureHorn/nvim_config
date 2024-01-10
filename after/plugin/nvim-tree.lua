local HEIGHT_RATIO = 0.6
local WIDTH_RATIO = 0.33

local function on_attach(bufnr)
    local api = require("nvim-tree.api")
    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.set("n", "<Esc>", vim.cmd.NvimTreeToggle, { buffer = bufnr})
end

require('nvim-tree').setup({
    on_attach = on_attach,
    view = {
        float = {
        enable = true,
        open_win_config = function()
            local screen_w = vim.opt.columns:get()
            local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
            local window_w = screen_w * WIDTH_RATIO
            local window_h = screen_h * HEIGHT_RATIO
            local window_w_int = math.floor(window_w)
            local window_h_int = math.floor(window_h)
            local center_x = (screen_w - window_w) / 2
            local center_y = ((vim.opt.lines:get() - window_h) / 2)
                         - vim.opt.cmdheight:get()
            return {
            border = 'single',
            relative = 'editor',
            row = center_y,
            col = center_x,
            width = window_w_int,
            height = window_h_int,
            }
            end,
        },
        width = function()
            return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
        end,
    },
    renderer = {
        indent_markers = {
            enable = true,
        },
    },
    actions = {
        expand_all = {
            max_folder_discovery = 50,
            exclude = { "build", ".git", "node_modules/" },
        },
        change_dir = {
            enable = false,
            restrict_above_cwd = true,
        }
   }
})
