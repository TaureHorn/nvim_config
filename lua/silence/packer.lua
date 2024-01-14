vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer can manage itself

    --  ///////// VISUAL PLUGINS //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    --  COLORSCHEMES
    use "thedenisnikulin/vim-cyberpunk"                             -- cyberpunk colorscheme
    use "luisiacc/the-matrix.nvim"                                  -- thematrix colorscheme
    use { "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim" } -- zenbones suite of colorschemes

    --  DETAILS
    use "voldikss/vim-floaterm"                                                                                                   -- Floating terminal windows
    use "folke/zen-mode.nvim"                                                                                                     -- Zen Mode: centre file with no distractions
    use "lukas-reineke/indent-blankline.nvim"                                                                                     -- Adds lines to show indent levels
    use 'goolord/alpha-nvim'
    use { "nvim-tree/nvim-web-devicons", config = function() require("nvim-web-devicons").setup() end }                           -- good icons in nvim-tree
    use { 'yaocccc/nvim-foldsign', event = 'CursorHold', config = 'require("nvim-foldsign").setup()' }                            -- adds sign in margin of a fold
    use { 'nvim-lualine/lualine.nvim', requires = { "meuter/lualine-so-fancy.nvim", 'nvim-tree/nvim-web-devicons', opt = true } } -- Statusline
    -- Noice adds a bunch of visual flavour e.g. centred cmd line and message popups
    use({ "folke/noice.nvim", requires = { "MunifTanjim/nui.nvim", } })

    --  /////// FUNCTIONAL PLUGINS ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    use "mbbill/undotree"                                                                               -- tracks file changes and allows to navigate and restore from history
    use "terrortylor/nvim-comment"                                                                      -- Add ability to toggle lines as comments
    use "sitiom/nvim-numbertoggle"                                                                      -- Toggles between relative and absolute line numbers
    use "nvim-lua/plenary.nvim"                                                                         -- don't forget to add this one if you don't have it yet!

    use { 'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = { { 'nvim-lua/plenary.nvim' } }, } -- Quick file search and navigation
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }         -- Auto-generates closing "", '', (), {}, []
    -- use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }           -- Adds tab functionality
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }                                        -- TREESITTER
    use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }                     -- nvim tree file explorer panel
    use { "ThePrimeagen/harpoon", branch = "harpoon2", requires = { { "nvim-lua/plenary.nvim" } } }

    --  LSP
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"

    --  AUTOCOMPLETE
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "saadparwaiz1/cmp_luasnip"
    use "L3MON4D3/LuaSnip"
end)
