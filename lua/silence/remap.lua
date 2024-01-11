vim.g.mapleader = " "                                                                -- set leader key to spacebar
vim.keymap.set("n", "<leader>ss", vim.cmd.w)                                         -- save file
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)                                -- save file
vim.keymap.set("n", "<leader>so", ":so %<CR>")                                       -- source file
vim.keymap.set("n", "<C-C>", '"+y')                                                  -- OS clipboard copy
vim.keymap.set("n", "<C-U>", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- select current word for replacement
vim.keymap.set("n", "m", "%")                                                        -- switch cursor between open and close bracket pairs
vim.keymap.set("n", "<leader>z", "zi")                                               -- toggle a fold

vim.keymap.set("n", "n", "nzzzv")                                                    -- keeps cursor in middle when moving through string searches
vim.keymap.set("n", "N", "Nzzzv")                                                    -- keeps cursor in middle when moving through string searches

vim.keymap.set("n", "<leader>#", vim.cmd.FloatermNew)                                -- open new floating terminal

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)                                 -- toggle NVIM tree panel

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)                             -- toggle undotree

-- Window/split navigation
vim.keymap.set("n", "<leader><Tab>", vim.cmd.vsp) -- vertical split

-- NVIM COMMENT
vim.keymap.set("n", '<C-_>', ':CommentToggle<CR>')
vim.keymap.set("v", '<C-_>', ":'<,'>CommentToggle<CR>")

-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {}) -- find words
vim.keymap.set('n', '<C-p>', builtin.find_files, {})     -- find files

-- Bufferline tabbing
local buf = require("bufferline")
vim.keymap.set("n", "<leader>0", vim.cmd.BufferLineTogglePin) -- pin a tab
vim.keymap.set("n", "<leader>q", vim.cmd.BufferLinePickClose) -- pick an open tab to close
vim.keymap.set("n", "<leader>1", function() buf.go_to_buffer(1, true) end)
vim.keymap.set("n", "<leader>2", function() buf.go_to_buffer(2, true) end)
vim.keymap.set("n", "<leader>3", function() buf.go_to_buffer(3, true) end)
vim.keymap.set("n", "<leader>4", function() buf.go_to_buffer(4, true) end)
vim.keymap.set("n", "<leader>5", function() buf.go_to_buffer(5, true) end)
vim.keymap.set("n", "<leader>6", function() buf.go_to_buffer(6, true) end)
vim.keymap.set("n", "<leader>7", function() buf.go_to_buffer(7, true) end)
vim.keymap.set("n", "<leader>8", function() buf.go_to_buffer(8, true) end)
vim.keymap.set("n", "<leader>9", function() buf.go_to_buffer(9, true) end)

-- INSERT MODE REMAPS
vim.keymap.set("i", "<C-_>", "<Bslash>") -- rebind \ to CTRL /

-- VISUAL MODE REMAPS
vim.keymap.set("v", "<C-C>", '"+y')          -- OS clipboard copy
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move block up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move block down
