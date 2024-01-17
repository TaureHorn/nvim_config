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

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "Add current buffer to harpoon list" })
vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
    { desc = "Toggle harpoon buffer list" })
vim.keymap.set("n", "<C-J>", function() harpoon:list():prev() end, { desc = "Goto prev buffer in harpoon list" })
vim.keymap.set("n", "<C-K>", function() harpoon:list():next() end, { desc = "Goto next buffer in harpoon list" })
vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open telescope harpoon window" })
