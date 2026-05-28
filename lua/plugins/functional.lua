
Autosave_Allowed_Directories = {
    "~/.bashrc.d",
    "~/.config",
    "~/.local",
    "~/bin",
    "/mnt/malsheem/0_PHYLACTERY/",
    "/mnt/malsheem/2_DOCUMENTS/",
}

return {
    -- auto-saves editor sessions
    {
        'rmagatti/auto-session',
        config = function()
            require("auto-session").setup {
                auto_create = function()
                    local autoSaveSession = false
                    local cwd = vim.fn.getcwd(-1, -1)
                    for _, path in pairs(Autosave_Allowed_Directories) do
                        local matchedPath = string.match(cwd, vim.fn.expand(path))
                        if type(matchedPath) == "string" then
                            autoSaveSession = true
                            break
                        end
                    end
                    return autoSaveSession
                end
            }
        end
    },

    -- hwapooooooooon
    {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        dependencies = { 'nvim_lua/plenary.nvim' },
        config = function()
            local harpoon = require("harpoon")

            harpoon.setup({
                settings = {
                    sync_on_ui_close = true,
                }
            })

            local function fzf_harpoon(harpoon_files)
                local file_paths = {}
                for _, item in ipairs(harpoon_files.items) do
                    table.insert(file_paths, item.value)
                end
                local actions = require('fzf-lua').actions
                require('fzf-lua').fzf_exec(file_paths, {
                    actions = {
                        ['enter'] = actions.file_edit_or_qf
                    },
                    previewer = 'builtin',
                    winopts = {
                        title = ' hwapooooooooon buffers '
                    }
                })
            end

            local map = vim.keymap.set
            map("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add current buffer to harpoon list" })
            map("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle harpoon buffer list" })
            map("n", "<C-e>", function() fzf_harpoon(harpoon:list()) end, { desc = "Open fzf-lua harpoon window" })

            map("n", "<leader>m", function() harpoon:list():select(1) end, { desc = "open harpoon buffer 1" })
            map("n", "<leader>,", function() harpoon:list():select(2) end, { desc = "open harpoon buffer 2" })
            map("n", "<leader>.", function() harpoon:list():select(3) end, { desc = "open harpoon buffer 3" })
            map("n", "<leader>j", function() harpoon:list():select(4) end, { desc = "open harpoon buffer 4" })
            map("n", "<leader>k", function() harpoon:list():select(5) end, { desc = "open harpoon buffer 5" })
            map("n", "<leader>l", function() harpoon:list():select(6) end, { desc = "open harpoon buffer 6" })
            map("n", "<leader>u", function() harpoon:list():select(7) end, { desc = "open harpoon buffer 7" })
            map("n", "<leader>i", function() harpoon:list():select(8) end, { desc = "open harpoon buffer 8" })
            map("n", "<leader>o", function() harpoon:list():select(9) end, { desc = "open harpoon buffer 9" })
        end
    },

    -- toggles comments
    {
        'terrortylor/nvim-comment',
        config = function()
            require('nvim_comment').setup()
        end
    },

    -- clipboard maanger
    {
        'AckslD/nvim-neoclip.lua',
        config = function()
            require('neoclip').setup()
        end
    },

    -- toggle relative / absolute line numbers
    { 'sitiom/nvim-numbertoggle' },

    -- undotree
    { 'mbbill/undotree' },

}
