return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        hls = {
            border = 'FloatBorder',
            preview_border = 'FloatBorder',
            title = 'FloatBorder'
        },
        winopts = {
            border = 'rounded',
            fullscreen = true,
            on_create = function()
                local inputs = {
                    [1] = '<Up>',
                    [2] = '<Down>',
                    [3] = '<Left>',
                    [4] = '<Right>'
                }
                for index = 1, #inputs do
                    vim.api.nvim_buf_set_keymap(0, 't', inputs[index], inputs[index], {})
                end
            end
        }
    }
}
