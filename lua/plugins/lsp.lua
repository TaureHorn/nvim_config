return {
    -- mason to install lsp servers
    {
        'williamboman/mason.nvim',
        priority = 800,
        config = function()
            require("mason").setup({
                ui = {
                    border = "single",
                    height = 0.6,
                    width = 0.33,
                }
            })
        end
    },

    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'L3MON4D3/LuaSnip' },
    { 'neovim/nvim-lspconfig', },

    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require('cmp')
            local ui = {
                border = 'rounded',
                winhighlight = "Normal:Normal"
            }

            cmp.setup({
                experimental = {
                    ghost_text = { hl_group = "@comment" },
                },
                mapping = cmp.mapping.preset.insert({
                    ['<Left>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                    ['<Right>'] = cmp.mapping.confirm({ select = true }),
                }),
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'buffer' },
                    { name = 'path' },
                }),
                window = {
                    completion = ui,
                    documentation = ui
                },
            })
        end
    },

    {
        'williamboman/mason-lspconfig.nvim',
        priority = 799,
        config = function()
            require("mason-lspconfig").setup()

            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local function keymap()
                -- print(" ** LSP keymap has attached to a buffer with a running LSP server: " .. server_name ..  " **")
                local map = vim.keymap.set
                map("n", "K", vim.lsp.buf.hover, { buffer = 0 })       -- hover info
                map("n", "gd", vim.lsp.buf.definition, { buffer = 0 }) -- jump to definition
                vim.cmd("call nvim_create_user_command('Mv', 'lua vim.lsp.buf.rename()', {})")

                -- DIAGNOSTICS
                map("n", "<leader>dn", vim.diagnostic.goto_next, { buffer = 0 }) -- jump to next diagnostic flag
                map("n", "<leader>dp", vim.diagnostic.goto_prev, { buffer = 0 }) -- jump to prev diagnostic flag
            end

            require("mason-lspconfig").setup_handlers {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities,
                        on_attach = keymap(),
                        root_dir = vim.fs.dirname,
                    }
                end,

                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        on_attach = keymap,
                        root_dir = vim.fs.dirname,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    }
                end
            }
        end
    }
}
