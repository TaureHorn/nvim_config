vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fm", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ss", vim.cmd.w)

-- Window/split navigation
vim.keymap.set("n", "<leader>v", vim.cmd.vsp)
vim.keymap.set("n", "<C-w>", "<C-W>w")

-- activate floating terminal
vim.keymap.set("n", "<leader>t", vim.cmd.FloatermNew)

-- NvimTree
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)

--Bufferline tabbing
vim.keymap.set("n", "<Tab>", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<leader>x", vim.cmd.BufferLinePickClose)

-- Undotree toggle tree panel
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Fugitive show git status
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

