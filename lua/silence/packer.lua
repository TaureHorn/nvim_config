-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  --///////// VISUAL PLUGINS /////////////////////////////////////////////////////////////
  --
  --    COLORSCHEMES
  --
  -- cyberpunk colorscheme // original
  use "thedenisnikulin/vim-cyberpunk"
  -- the matrix colorscheme
  use "luisiacc/the-matrix.nvim"
  -- gruber darker colorscheme
  use "blazkowolf/gruber-darker.nvim"
  -- nightowl colorscheme
  use "oxfist/night-owl.nvim"

  --    DETAILS
  --
  -- icons
  use "nvim-tree/nvim-web-devicons"
  -- Floating terminal windows
  use "voldikss/vim-floaterm"
  -- Zen Mode: centre file with no distractions
  use "folke/zen-mode.nvim"
  -- Statusline
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  -- Noice would go here if it didn't break the mode tracker thingy
  use({
      "folke/noice.nvim",
      config = function()
          require("noice").setup({
              -- add any options here
          })
      end,
      requires = {
          -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
          "MunifTanjim/nui.nvim",
          -- OPTIONAL:
          --   `nvim-notify` is only needed, if you want to use the notification view.
          --   If not available, we use `mini` as the fallback
          "rcarriga/nvim-notify",
      }
  })
  -- /////// FUNCTIONAL PLUGINS /////////////////////////////////////////////////////////
  --
  -- nvim tree file explorer panel
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
      config = function()
          require("nvim-tree").setup {}
      end
  }
  -- Telescope for quick file search and navigation
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Autopairs auto generates closing quote and parentheses 
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  -- Bufferline adds tab functionality 
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- Undotree adds a track for file changes and allows you to navigate through the change history
  use "mbbill/undotree"
  -- Fugitive adds some git functionality
  use "tpope/vim-fugitive"
  -- Add ability to toggle lines as comments
  use "terrortylor/nvim-comment"
  -- LSP Zero adds full Language Server Protocol functionality, with autocomplete and mason lsp plugin manager
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
              pcall(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
  }
}

  end)
