vim.g.mapleader = " "

vim.keymap.set("n", "H", "^", { desc = "move cursor to beginning of line" })
vim.keymap.set("n", "L", "$", { desc = "move cursor to end of line" })
vim.keymap.set("n", "<C-j>", "}", { desc = "move down by paragraph" })
vim.keymap.set("n", "<C-k>", "{", { desc = "move up by paragraph" })

vim.keymap.set("n", "m", "%", { desc = "navigate cursor to paired bracket" })
vim.keymap.set("n", "\\", vim.cmd.noh, { desc = "noh to stop highlighting" })
vim.keymap.set("n", "<>p", "jPk", { desc = "paste below w/o moving cursor" })
vim.keymap.set("n", "n", "nzzzv", { desc = "keep cursor in middle when moving through search results" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "keep cursor in middle when moving through search results" })
vim.keymap.set("n", "<C-y>", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "rename word under cursor" })
vim.keymap.set("n", "<leader>'", "bi'<Esc>ea<Esc>'", { desc = "wrap word under cursor in '' " })
vim.keymap.set("n", ",", "za", { desc = "toggle fold" })

vim.keymap.set("n", "<leader>ss", vim.cmd.w, { desc = "save buffer" })
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { desc = "format buffer" })
vim.keymap.set("n", "<leader>ww", function()
    vim.lsp.buf.format()
    vim.cmd("w")
end, { desc = "format and save buffer" })

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle, { desc = "toggle nvim-tree window" })

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "toggle undotree" })

vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "vim-fugitive Git cmd" })

vim.keymap.set("n", "zz", vim.cmd.ZenMode, { desc = "toggle ZenMode" })

-- Window/split navigation
vim.keymap.set("n", "<leader><CR>", vim.cmd.vsp, { desc = "vertical split" })
vim.keymap.set("n", "<leader><Tab>", vim.cmd.sp, { desc = "split" })
vim.keymap.set("n", "<Left>", "<cmd>wincmd h<CR>", { desc = "move to split left" })
vim.keymap.set("n", "<Down>", "<cmd>wincmd j<CR>", { desc = "move to split down" })
vim.keymap.set("n", "<Up>", "<cmd>wincmd k<CR>", { desc = "move to split up" })
vim.keymap.set("n", "<Right>", "<cmd>wincmd l<CR>", { desc = "move to split rigth" })
--
vim.keymap.set("n", "<A-Left>", "<cmd>vertical res -20<CR>", { desc = "decrease window witdth by 20" })
vim.keymap.set("n", "<A-Down>", "<cmd>res -20<CR>", { desc = "decrease window height by 20" })
vim.keymap.set("n", "<A-Up>", "<cmd>res +20<CR>", { desc = "increase window height by 20" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical res +20<CR>", { desc = "increase window width by 20" })

-- NVIM COMMENT
vim.keymap.set("n", '<C-_>', ':CommentToggle<CR>', { desc = "toggle comment" })
vim.keymap.set("v", '<C-_>', ":'<,'>CommentToggle<CR>", { desc = "toggle comment" })

-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-P>', builtin.find_files, { desc = "open Telescope file finder" })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = "open Telescope file grep" })
vim.keymap.set('n', '<leader>fd', vim.diagnostic.setqflist)

-- INSERT MODE REMAPS
vim.keymap.set("i", "<C-H>", "<Esc>caw", { desc = "CTRL Backspace deletes whole words" })
vim.keymap.set("i", "<c-j>", "{<CR>}<Esc>O", { desc = "shorcut for a pair of curly brackets" })
vim.keymap.set("i", "<c-k>", "()<Esc>i", { desc = "shorcut for a pair of parentheses" })
vim.keymap.set("i", "<c-l>", "[]<Esc>i", { desc = "shorcut for a pair of square brackets" })
vim.keymap.set("i", "<c-q>", "<C-K>", { desc = "shorcut for a pair of square brackets" })

-- VISUAL MODE REMAPS
vim.keymap.set("v", "<C-C>", '"+y', { desc = "OS clipboard copy" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move select block up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move select block down" })
vim.keymap.set("v", "m", "%", { desc = "move cursor to paired bracket" })
vim.keymap.set("v", "H", "^", { desc = "move cursor to beginning of line" })
vim.keymap.set("v", "L", "$", { desc = "move cursor to end of line" })
vim.keymap.set("v", "<C-j>", "}", { desc = "move down by paragraph" })
vim.keymap.set("v", "<C-k>", "{", { desc = "move up by paragraph" })


-- TERMINAL MODE REMAPS
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "exit terminal mode" })
vim.keymap.set("t", "<Left>", "<C-\\><C-n><C-w>h", { desc = "move to different split from terminal" })
vim.keymap.set("t", "<Down>", "<C-\\><C-n><C-w>j", { desc = "move to different split from terminal" })
vim.keymap.set("t", "<Up>", "<C-\\><C-n><C-w>k", { desc = "move to different split from terminal" })
vim.keymap.set("t", "<Right>", "<C-\\><C-n><C-w>l", { desc = "move to different split from terminal" })

