vim.g.mapleader = ' '
vim.g.maplocalleader = '/'

local map = vim.keymap.set
map("n", "H", "^", { desc = "move cursor to beginning of line" })
map("n", "L", "$", { desc = "move cursor to end of line" })
map("n", "<C-j>", "}", { desc = "move down by paragraph" })
map("n", "<C-k>", "{", { desc = "move up by paragraph" })

map("n", "m", "%", { desc = "navigate cursor to paired bracket" })
map("n", "\\", vim.cmd.noh, { desc = "noh to stop highlighting" })
map("n", "<leader>p", "jPk", { desc = "paste below w/o moving cursor" })
map("n", "n", "nzzzv", { desc = "keep cursor in middle when moving through search results" })
map("n", "N", "Nzzzv", { desc = "keep cursor in middle when moving through search results" })
map("n", "<leader>y", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "rename word under cursor" })
map("n", "<leader>'", "bi'<Esc>ea'<Esc>", { desc = "wrap word under cursor in '' " })
map("n", ",", "za", { desc = "toggle fold" })

map("n", "<leader>ff", vim.lsp.buf.format, { desc = "format buffer" })

map("n", "<C-n>", vim.cmd.NvimTreeToggle, { desc = "toggle nvim-tree window" })

map("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "toggle undotree" })

-- Window/split navigation
map("n", "<leader><CR>", vim.cmd.vsp, { desc = "vertical split" })
map("n", "<leader><Esc>", vim.cmd.sp, { desc = "split" })
map("n", "<Left>", "<cmd>wincmd h<CR>", { desc = "move to split left" })
map("n", "<Down>", "<cmd>wincmd j<CR>", { desc = "move to split down" })
map("n", "<Up>", "<cmd>wincmd k<CR>", { desc = "move to split up" })
map("n", "<Right>", "<cmd>wincmd l<CR>", { desc = "move to split rigth" })
--
map("n", "<A-h>", "<cmd>vertical res -20<CR>", { desc = "decrease window witdth by 20" })
map("n", "<A-j>", "<cmd>res -20<CR>", { desc = "decrease window height by 20" })
map("n", "<A-k>", "<cmd>res +20<CR>", { desc = "increase window height by 20" })
map("n", "<A-l>", "<cmd>vertical res +20<CR>", { desc = "increase window width by 20" })

-- NVIM COMMENT
map({ "n", "v" }, '<C-/>', ':CommentToggle<CR>', { desc = "toggle comment (kitty)" })

-- FZF-LUA
map('n', '<c-p>', ":FzfLua files<CR>")
map('n', '<leader>fw', ":FzfLua live_grep<CR>")
map('n', '<leader>c', ":lua require('neoclip.fzf')()<CR>")
map('n', '<leader>fd', ":FzfLua diagnostics_workspace<CR>")

-- INSERT MODE REMAPS
map("i", "<C-H>", "<Esc>caw", { desc = "CTRL Backspace deletes whole words" })
map("i", "<c-j>", "{<CR>}<Esc>O", { desc = "shorcut for a pair of curly brackets" })
map("i", "<c-k>", "()<Esc>i", { desc = "shorcut for a pair of parentheses" })
map("i", "<c-l>", "[]<Esc>i", { desc = "shorcut for a pair of square brackets" })
map("i", "<c-q>", "<C-K>", { desc = "" })

-- VISUAL MODE REMAPS
map("v", "<c-y>", '"+y', { desc = "yank selection to system clipboard" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "move select block up" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "move select block down" })
map("v", "m", "%", { desc = "move cursor to paired bracket" })
map("v", "H", "^", { desc = "move cursor to beginning of line" })
map("v", "L", "$", { desc = "move cursor to end of line" })
map("v", "<c-j>", "}", { desc = "move down by paragraph" })
map("v", "<c-k>", "{", { desc = "move up by paragraph" })
map("v", "<c-l>", "yoconsole.log('<Esc>pa', <Esc>pa)<Esc>", { desc = "console.log selected block" })


-- TERMINAL MODE REMAPS
map("t", "<Esc>", "<C-\\><C-n>", { desc = "exit terminal mode" })
map("t", "<Left>", "<C-\\><C-n><C-w>h", { desc = "move to different split from terminal" })
map("t", "<Down>", "<C-\\><C-n><C-w>j", { desc = "move to different split from terminal" })
map("t", "<Up>", "<C-\\><C-n><C-w>k", { desc = "move to different split from terminal" })
map("t", "<Right>", "<C-\\><C-n><C-w>l", { desc = "move to different split from terminal" })

