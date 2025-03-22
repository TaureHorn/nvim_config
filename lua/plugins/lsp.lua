return {
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require('cmp')
            local ui = {
                border = "single",
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
                    expand = function(args) require('luasnip').lsp_expand(args.body) end
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' }, { name = 'luasnip' } }, { { name = 'buffer' }, { name = 'path' },
                }),
                window = {
                    completion = ui,
                    documentation = ui
                },
            })
        end
    },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'L3MON4D3/LuaSnip' },
    { 'neovim/nvim-lspconfig', },

    -- mason to install lsp servers
    {
        'williamboman/mason.nvim',
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
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require("mason-lspconfig").setup()

            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local function keymap()
                print(" ** LSP keymap has attached to a buffer with a running LSP server ** ")
                vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })       -- hover info
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 }) -- jump to definition
                vim.cmd("call nvim_create_user_command('Mv', 'lua vim.lsp.buf.rename()', {})")

                -- DIAGNOSTICS
                vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { buffer = 0 })         -- jump to next diagnostic flag
                vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { buffer = 0 })         -- jump to prev diagnostic flag
                vim.keymap.set("n", "<leader>df", "<cmd>Telescope diagnostics<CR>", { buffer = 0 }) -- telescope diagnostic flags
                -- CTRL-Q within Telescope diagnostics to add results to lower window
            end

            require("mason-lspconfig").setup_handlers {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities,
                        on_attach = keymap,
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
