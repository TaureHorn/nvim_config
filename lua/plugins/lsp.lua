return {

    -- lspconfig to initialise lsp servers
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'saghen/blink.cmp' },
        opts = {
            servers = {
                bashls = {},
                clangd = {},
                cssls = {},
                html = {},
                gopls = {},
                jsonls = {},
                lua_ls = { settings = { Lua = { diagnostics = { globals = { 'vim' } } } } },
                ts_ls = {},
            },
        },
        config = function(_, opts)
            local lspconfig = require('lspconfig')

            local handlers = {
                ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'rounded' }),
            }

            for server, config in pairs(opts.servers) do
                config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
                config.handlers = handlers
                config.on_attach = function()
                    print(server .. ' >>> lsp server attached to buffer in file [' .. vim.fn.expand('%:t') .. ']')
                end
                lspconfig[server].setup(config)
            end
        end
    },

    -- blink.cmp for auto completion
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = '1.*',
        opts = {
            appearance = {
                nerd_font_variant = 'Nerd Font Mono'
            },
            completion = {
                ghost_text = { enabled = true },
                documentation = {
                    window = {
                        border = 'rounded',
                        winhighlight = 'Pmenu:BlinkCmpDocBorder'
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
                },
            },
            keymap = {
                ['<Up>'] = { 'select_prev', 'fallback' },
                ['<Down>'] = { 'select_next', 'fallback' },
                ['<Left>'] = { 'hide', 'fallback' },
                ['<Right>'] = { 'accept', 'fallback' },
                ['<CR>'] = { 'accept', 'fallback' },
                ['<c-g>'] = { 'show_documentation', 'hide_documentation', 'fallback' },
                ['<c-n>'] = { 'hide_signature', 'show_signature', 'fallback' },
                ['<c-k>'] = {}, -- unbind c-k that toggles signature
            },
            signature = {
                enabled = true,
                window = {
                    border = 'rounded',
                    winhighlight = 'Pmenu:BlinkCmpSignatureHelpBorder'
                }
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

    {
        'ron-rs/ron.vim'
    }

}
