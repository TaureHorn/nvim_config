vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>z", "zi", { desc= "toggle fold under cursor" })

vim.keymap.set("n", "m", "%", { desc = "navigate cursor to paired bracket" })
vim.keymap.set("n", "\\", vim.cmd.noh, { desc = "noh to stop highlighting" })
vim.keymap.set("n", "<leader>p", "jPk", { desc = "paste below w/o moving cursor" })
vim.keymap.set("n", "n", "nzzzv", { desc = "keep cursor in middle when moving through search results" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "keep cursor in middle when moving through search results" })
vim.keymap.set("n", "<C-y>", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
    { desc = "rename word under cursor" })

vim.keymap.set("n", "<leader>ss", vim.cmd.w, { desc = "save buffer" })
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = "format buffer" })
vim.keymap.set("n", "<leader>ww", function()
    vim.lsp.buf.format()
    vim.cmd("w")
end, { desc = "format and save buffer" })

vim.keymap.set("n", "<C-\\>", vim.cmd.FloatermNew, { desc = "open float term window" })

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle, { desc = "toggle nvim-tree window" })

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "toggle undotree" })

vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "vim-fugitive Git cmd" })

vim.keymap.set("n", "<leader>z", vim.cmd.ZenMode, { desc = "toggle ZenMode" })

-- Window/split navigation
vim.keymap.set("n", "<leader><CR>", vim.cmd.vsp, { desc = "vertical split" })
vim.keymap.set("n", "<leader><Tab>", vim.cmd.sp, { desc = "split" })
vim.keymap.set("n", "<Left>", "<cmd>wincmd h<CR>", { desc = "move to split left" })
vim.keymap.set("n", "<Down>", "<cmd>wincmd j<CR>", { desc = "move to split down" })
vim.keymap.set("n", "<Up>", "<cmd>wincmd k<CR>", { desc = "move to split up" })
vim.keymap.set("n", "<Right>", "<cmd>wincmd l<CR>", { desc = "move to split rigth" })

vim.keymap.set("n", "<A-Left>", "<cmd>vertical res -20<CR>", { desc = "decrease window witdth by 20" })
vim.keymap.set("n", "<A-Down>", "<cmd>res -20<CR>", { desc = "decrease window height by 20" })
vim.keymap.set("n", "<A-Up>", "<cmd>res +20<CR>", { desc = "increase window height by 20" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical res +20<CR>", { desc = "increase window width by 20" })

-- NVIM COMMENT
vim.keymap.set("n", '<C-l>', ':CommentToggle<CR>', { desc = "toggle comment" })
vim.keymap.set("v", '<C-l>', ":'<,'>CommentToggle<CR>", { desc = "toggle comment" })

-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = "open Telescope file finder" })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = "open Telescope file grep" })
vim.keymap.set('n', '<leader>fd', vim.diagnostic.setqflist)

-- INSERT MODE REMAPS
vim.keymap.set("i", "<c-j>", "{<CR>}<Esc>O", { desc = "shorcut for a pair of curly brackets" })
vim.keymap.set("i", "<c-k>", "()<Esc>i", { desc = "shorcut for a pair of parentheses" })
vim.keymap.set("i", "<c-l>", "[]<Esc>i", { desc = "shorcut for a pair of square brackets" })


-- VISUAL MODE REMAPS
vim.keymap.set("v", "<C-C>", '"+y', { desc = "OS clipboard copy" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move select block up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move select block down" })
vim.keymap.set("v", "m", "%", { desc = "move cursor to paired bracket" })

-- TERMINAL MODE REMAPS
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "exit terminal mode" })
vim.keymap.set("t", "<A-h>", "<C-\\><C-n><C-w>h", { desc = "move to different split from terminal" })
vim.keymap.set("t", "<A-j>", "<C-\\><C-n><C-w>j", { desc = "move to different split from terminal" })
vim.keymap.set("t", "<A-k>", "<C-\\><C-n><C-w>k", { desc = "move to different split from terminal" })
vim.keymap.set("t", "<A-l>", "<C-\\><C-n><C-w>l", { desc = "move to different split from terminal" })
