return {
    -- auto-saves editor sessions
    {
        'rmagatti/auto-session',
        config = function()
            require("auto-session").setup {
                suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
            }
        end
    },

    -- hwapooooooooon
    {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        dependencies = { 'nvim_lua/plenary.nvim',  'nvim-telescope/telescope.nvim'},
        config = function()
            local harpoon = require("harpoon")

            harpoon.setup({
                settings = {
                    sync_on_ui_close = true,
                }
            })

            local conf = require("telescope.config").values
            local function toggle_telescope(harpoon_files)
                local file_paths = {}
                for _, item in ipairs(harpoon_files.items) do
                    table.insert(file_paths, item.value)
                end

                require("telescope.pickers").new({}, {
                    prompt_title = "Harpoon",
                    finder = require("telescope.finders").new_table({
                        results = file_paths,
                    }),
                    previewer = conf.file_previewer({}),
                    sorter = conf.generic_sorter({}),
                }):find()
            end

            local map = vim.keymap.set
            map("n", "<leader>q", function() harpoon:list():add() end, { desc = "Add current buffer to harpoon list" })
            map("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
                { desc = "Toggle harpoon buffer list" })
            map("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open telescope harpoon window" })

            map("n", "<leader>a", function() harpoon:list():select(1) end, { desc = "open harpoon buffer 1" })
            map("n", "<leader>s", function() harpoon:list():select(2) end, { desc = "open harpoon buffer 2" })
            map("n", "<leader>d", function() harpoon:list():select(3) end, { desc = "open harpoon buffer 3" })
            map("n", "<leader>f", function() harpoon:list():select(4) end, { desc = "open harpoon buffer 4" })
            map("n", "<leader>g", function() harpoon:list():select(5) end, { desc = "open harpoon buffer 5" })
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
