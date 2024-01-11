vim.g.mapleader = " "                                                                -- set leader key to spacebar
vim.keymap.set("n", "<leader>so", ":so %<CR>")                                       -- source file
vim.keymap.set("n", "<C-C>", '"+y')                                                  -- OS clipboard copy
vim.keymap.set("n", "<C-U>", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- select current word for replacement
vim.keymap.set("n", "m", "%")                                                        -- switch cursor between open and close bracket pairs
vim.keymap.set("n", "<leader>z", "zi")                                               -- toggle a fold


vim.keymap.set("n", "<leader>ss", vim.cmd.w)          -- save file
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format) -- format file
vim.keymap.set("n", "<leader>ww", function()          -- format and save file
    vim.lsp.buf.format()
    vim.cmd("w")
end)

vim.keymap.set("n", "<leader>qh", function() -- jump down vsp and quit
    vim.cmd("wincmd j")
    vim.cmd("q")
end)

vim.keymap.set("n", "n", "nzzzv")                        -- keeps cursor in middle when moving through string searche
vim.keymap.set("n", "N", "Nzzzv")                        -- keeps cursor in middle when moving through string searches

vim.keymap.set("n", "<leader>#", vim.cmd.FloatermNew)    -- open new floating terminal

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)     -- toggle NVIM tree panel

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle) -- toggle undotree

-- Window/split navigation
vim.keymap.set("n", "<leader><Tab>", vim.cmd.vsp) -- vertical split
vim.keymap.set("n", "<leader><CR>", vim.cmd.sp)   -- split
vim.keymap.set("n", "<A-j>", "<cmd>wincmd j<CR>") -- move to split down
vim.keymap.set("n", "<A-k>", "<cmd>wincmd k<CR>") -- move to split up
vim.keymap.set("n", "<A-h>", "<cmd>wincmd h<CR>") -- move to split left
vim.keymap.set("n", "<A-l>", "<cmd>wincmd l<CR>") -- move to split right

-- NVIM COMMENT
vim.keymap.set("n", '<C-_>', ':CommentToggle<CR>')
vim.keymap.set("v", '<C-_>', ":'<,'>CommentToggle<CR>")

-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})     -- find files
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {}) -- find words

-- Bufferline tabbing
local buf = require("bufferline")
for i = 1, 9 do
    vim.keymap.set("n", "<leader>" .. i, function() buf.go_to_buffer(i, true) end)
end
vim.keymap.set("n", "<leader>0", vim.cmd.BufferLineTogglePin) -- pin a tab
vim.keymap.set("n", "<leader>q", vim.cmd.BufferLinePickClose) -- pick an open tab to close

-- INSERT MODE REMAPS
vim.keymap.set("i", "<C-_>", "<Bslash>") -- rebind \ to CTRL /

-- VISUAL MODE REMAPS
vim.keymap.set("v", "<C-C>", '"+y')          -- OS clipboard copy
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move block up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move block down

-- TERMINAL MODE REMAPS
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")       -- exit terminal mode
vim.keymap.set("t", "<A-h>", "<C-\\><C-n><C-w>h") -- navigate from terminal mode to different window
vim.keymap.set("t", "<A-j>", "<C-\\><C-n><C-w>j") -- navigate from terminal mode to different window
vim.keymap.set("t", "<A-k>", "<C-\\><C-n><C-w>k") -- navigate from terminal mode to different window
vim.keymap.set("t", "<A-l>", "<C-\\><C-n><C-w>l") -- navigate from terminal mode to different window
