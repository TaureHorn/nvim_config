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
                    '<Up>',
                    '<Down>',
                    '<Left>',
                    '<Right>'
                }

                for _, key in ipairs(inputs) do
                    vim.api.nvim_buf_set_keymap(0, 't', key, key, {})
                end

            end
        }
    }
}
