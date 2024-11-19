
vim.g.mapleader = " "

local kmp = vim.keymap.set
kmp("n", "H", "^", { desc = "move cursor to beginning of line" })
kmp("n", "L", "$", { desc = "move cursor to end of line" })
kmp("n", "<C-j>", "}", { desc = "move down by paragraph" })
kmp("n", "<C-k>", "{", { desc = "move up by paragraph" })

kmp("n", "m", "%", { desc = "navigate cursor to paired bracket" })
kmp("n", "\\", vim.cmd.noh, { desc = "noh to stop highlighting" })
kmp("n", "<leader>p", "jPk", { desc = "paste below w/o moving cursor" })
kmp("n", "n", "nzzzv", { desc = "keep cursor in middle when moving through search results" })
kmp("n", "N", "Nzzzv", { desc = "keep cursor in middle when moving through search results" })
kmp("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "rename word under cursor" })
kmp("n", "<leader>'", "bi'<Esc>ea'<Esc>", { desc = "wrap word under cursor in '' " })
kmp("n", ",", "za", { desc = "toggle fold" })

kmp("n", "<leader>ff", vim.lsp.buf.format, { desc = "format buffer" })

kmp("n", "<C-n>", vim.cmd.NvimTreeToggle, { desc = "toggle nvim-tree window" })

kmp("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "toggle undotree" })

kmp("n", "zz", vim.cmd.ZenMode, { desc = "toggle ZenMode" })

-- Window/split navigation
kmp("n", "<leader><CR>", vim.cmd.vsp, { desc = "vertical split" })
kmp("n", "<leader><Tab>", vim.cmd.sp, { desc = "split" })
kmp("n", "<Left>", "<cmd>wincmd h<CR>", { desc = "move to split left" })
kmp("n", "<Down>", "<cmd>wincmd j<CR>", { desc = "move to split down" })
kmp("n", "<Up>", "<cmd>wincmd k<CR>", { desc = "move to split up" })
kmp("n", "<Right>", "<cmd>wincmd l<CR>", { desc = "move to split rigth" })
--
kmp("n", "<A-Left>", "<cmd>vertical res -20<CR>", { desc = "decrease window witdth by 20" })
kmp("n", "<A-Down>", "<cmd>res -20<CR>", { desc = "decrease window height by 20" })
kmp("n", "<A-Up>", "<cmd>res +20<CR>", { desc = "increase window height by 20" })
kmp("n", "<A-Right>", "<cmd>vertical res +20<CR>", { desc = "increase window width by 20" })

-- NVIM COMMENT
kmp({"n", "v"}, '<C-/>', ':CommentToggle<CR>', { desc = "toggle comment (kitty)" })

-- TELESCOPE
local builtin = require("telescope.builtin")
kmp('n', '<C-P>', builtin.find_files, { desc = "open Telescope file finder" })
kmp('n', '<leader>fw', builtin.live_grep, { desc = "open Telescope file grep" })
kmp('n', '<leader>fd', vim.diagnostic.setqflist)

-- INSERT MODE REMAPS
kmp("i", "<C-H>", "<Esc>caw", { desc = "CTRL Backspace deletes whole words" })
kmp("i", "<c-j>", "{<CR>}<Esc>O", { desc = "shorcut for a pair of curly brackets" })
kmp("i", "<c-k>", "()<Esc>i", { desc = "shorcut for a pair of parentheses" })
kmp("i", "<c-l>", "[]<Esc>i", { desc = "shorcut for a pair of square brackets" })
kmp("i", "<c-q>", "<C-K>", { desc = "shorcut for a pair of square brackets" })

-- VISUAL MODE REMAPS
kmp("v", "<c-y>", '"+y', { desc = "yank selection to system clipboard" })
kmp("v", "J", ":m '>+1<CR>gv=gv", { desc = "move select block up" })
kmp("v", "K", ":m '<-2<CR>gv=gv", { desc = "move select block down" })
kmp("v", "m", "%", { desc = "move cursor to paired bracket" })
kmp("v", "H", "^", { desc = "move cursor to beginning of line" })
kmp("v", "L", "$", { desc = "move cursor to end of line" })
kmp("v", "<C-j>", "}", { desc = "move down by paragraph" })
kmp("v", "<C-k>", "{", { desc = "move up by paragraph" })

-- TERMINAL MODE REMAPS
kmp("t", "<Esc>", "<C-\\><C-n>", { desc = "exit terminal mode" })
kmp("t", "<Left>", "<C-\\><C-n><C-w>h", { desc = "move to different split from terminal" })
kmp("t", "<Down>", "<C-\\><C-n><C-w>j", { desc = "move to different split from terminal" })
kmp("t", "<Up>", "<C-\\><C-n><C-w>k", { desc = "move to different split from terminal" })
kmp("t", "<Right>", "<C-\\><C-n><C-w>l", { desc = "move to different split from terminal" })

