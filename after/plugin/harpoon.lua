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

vim.keymap.set("n", "<leader>q", function() harpoon:list():add() end, { desc = "Add current buffer to harpoon list" })
vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
    { desc = "Toggle harpoon buffer list" })
vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open telescope harpoon window" })

vim.keymap.set("n", "<leader>a", function() harpoon:list():select(1) end, { desc = "open harpoon buffer 1" })
vim.keymap.set("n", "<leader>s", function() harpoon:list():select(2) end, { desc = "open harpoon buffer 2" })
vim.keymap.set("n", "<leader>d", function() harpoon:list():select(3) end, { desc = "open harpoon buffer 3" })
vim.keymap.set("n", "<leader>f", function() harpoon:list():select(4) end, { desc = "open harpoon buffer 4" })
vim.keymap.set("n", "<leader>g", function() harpoon:list():select(5) end, { desc = "open harpoon buffer 5" })
