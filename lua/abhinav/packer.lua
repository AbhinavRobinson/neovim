vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Startup
  use {
    'echasnovski/mini.starter',
    requires = { "echasnovski/mini.sessions" }
  }

  -- Lazygit
  use 'kdheepak/lazygit.nvim'

  -- GitSigns
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- File Browser
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly',
    config = function()
      require("nvim-tree").setup {
        update_focused_file = {
          enable = true,
        }
      }
    end
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' }, { "kdheepak/lazygit.nvim" },
      { "nvim-telescope/telescope-file-browser.nvim" } },
    config = function()
      require("telescope").load_extension "lazygit"
      require("telescope").load_extension "file_browser"
    end,
  }

  -- Theme
  use {
    "EdenEast/nightfox.nvim",
    as = "nightfox",
    config = function()
      vim.cmd('colorscheme carbonfox')
    end
  }

  -- Treesitter
  use(
    'nvim-treesitter/nvim-treesitter',
    {
      run = ':TSUpdate'
    }
  )
  use('nvim-treesitter/playground')

  -- Undotree
  use('mbbill/undotree')

  -- Harpoon
  use('theprimeagen/harpoon')

  -- Null LS
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Prettier
  use('MunifTanjim/prettier.nvim')

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- Devicons
  use 'nvim-tree/nvim-web-devicons'

  -- Bufferline
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {}
    end
  }

  -- Feline
  use {
    'feline-nvim/feline.nvim',
  }
end)
