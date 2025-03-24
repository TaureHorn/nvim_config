return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        -- setup highlighting for handlebars file
        vim.cmd('autocmd BufRead,BufNewFile *.hbs set filetype=html')

        configs.setup({
            sync_install = false,
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
