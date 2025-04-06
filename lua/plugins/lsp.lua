return {

    -- lspconfig to initialise lsp servers
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'saghen/blink.cmp' },
        config = function()
            local servers = {
                [1] = 'bashls',
                [2] = 'cssls',
                [3] = 'gopls',
                [4] = 'lua_ls',
                [5] = 'ts_ls',
            }

            for _, server in ipairs(servers) do
                local capabilities = require('blink.cmp').get_lsp_capabilities()
                require('lspconfig')[server].setup {
                    capabilities = capabilities
                }
            end
        end
    },

    -- blink.cmp for auto completion
    {
        'saghen/blink.cmp',
        version = '1.*',
        opts = {
            appearance = {
                nerd_font_variant = 'Nerd Font Mono'
            },
            completion = {
                ghost_text = { enabled = true },
                documentation = {
                    window = {
                        border = 'rounded'
                    },
                },
                menu = {
                    border = 'rounded',
                    draw = {
                        columns = {
                            { 'label', gap = 5 },
                            { 'kind' }
                        },
                        components = {
                            kind = {
                                text = function(ctx) return ' |' .. ctx.kind .. '|' end
                            }
                        },
                        treesitter = { 'lsp' }
                    },
                    min_width = 20
                }
            },
            keymap = {
                ['<Up>'] = { 'select_prev', 'fallback' },
                ['<Down>'] = { 'select_next', 'fallback' },
                ['<Left>'] = { 'hide', 'fallback' },
                ['<Right>'] = { 'accept', 'fallback' },
                ['<CR>'] = { 'accept', 'fallback' },
                ['<c-g>'] = { 'show_documentation', 'hide_documentation', 'fallback' },
                ['<c-i>'] = { 'show_signature', 'hide_signature', 'fallback' },
                ['<c-k>'] = {} -- unbind c-k that toggles signature
            },
        },
    },

    -- mason to install lsp servers
    {
        'williamboman/mason.nvim',
        priority = 800,
        config = function()
            require("mason").setup({
                ui = {
                    border = "single",
                    height = 1,
                    width = 1,
                }
            })
        end
    },

}
