require("mason").setup({
    ui = {
        border = "rounded",
        height = 0.6,
        width = 0.33,
    }
})

require("mason-lspconfig").setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local function keymap()
    print(" ** LSP keymap has attached to a buffer with a running LSP server ** ")
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })          -- hover info
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })    -- jump to definition
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = 0 }) -- rename item across files

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

-- AUTOCOMPLETE
local cmp = require 'cmp'
cmp.setup({
    snippet = {
        expand = function(args) require('luasnip').lsp_expand(args.body) end },

    window = {
        completion = cmp.config.window.bordered("single"),
        documentation = cmp.config.window.bordered("single"),
    },

    experimental = {
        ghost_text = { hl_group = "@comment" },
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-e>'] = cmp.mapping.abort(),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    }),

    sources = cmp.config.sources({
        { name = 'nvim_lsp' }, { name = 'luasnip' } }, { { name = 'buffer' }, { name = 'path'},
    })
})
