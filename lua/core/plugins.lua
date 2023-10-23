local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
      fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
      vim.cmd [[packadd packer.nvim]]
      return true
    end
    return false
  end
  
  local packer_bootstrap = ensure_packer()
  
  return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- My plugins here
    -- use 'foo1/bar1.nvim'
    -- use 'foo2/bar2.nvim'
    use { "ellisonleao/gruvbox.nvim" }
    -- use({
    --   "neanias/everforest-nvim",
    --   -- Optional; default configuration will be used if setup isn't called.
    --   config = function()
    --     require("everforest").setup()
    --   end,
    -- })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
       requires = { {'nvim-lua/plenary.nvim'} }
    }
    use({
      "chama-chomo/grail",
      -- Optional; default configuration will be used if setup isn't called.
      config = function()
      require("grail").setup()
      end,
    })
    use {
      'nvim-lualine/lualine.nvim',
       requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { "fatih/vim-go" }
    use {
      'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
      },
    use {"akinsho/toggleterm.nvim", tag = '*' },
    use "terrortylor/nvim-comment",
    use "lukas-reineke/indent-blankline.nvim",
    use "cohama/lexima.vim",
    use {
      "NeogitOrg/neogit",
      dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "nvim-telescope/telescope.nvim", -- optional
        "sindrets/diffview.nvim",        -- optional
        "ibhagwan/fzf-lua",              -- optional
      },
      config = true    
    },
    use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
      }
  }
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
  end)
