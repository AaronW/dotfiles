return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Common Dependency
  --use 'nvim-lua/plenary.nvim'
  --use 'nvim-lua/popup.nvim'

  -- Editing enhancements and tools
  --use 'windwp/nvim-autopairs'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'nvim-telescope/telescope-symbols.nvim'
  use 'numtostr/FTerm.nvim'
  use {'iamcco/markdown-preview.nvim', ft = 'markdown', run = 'cd app && yarn install'}

  -- Tim Pope
  use 'tpope/vim-sleuth'

  -- LSP + Syntax
  use 'neovim/nvim-lspconfig'
  use('ray-x/lsp_signature.nvim')
  use 'hrsh7th/nvim-compe'
  use 'onsails/lspkind-nvim'
  use({ 'dag/vim-fish', ft = 'fish' })
  use 'sheerun/vim-polyglot'
  --use {'prettier/vim-prettier', run = 'yarn install'}
  use 'folke/trouble.nvim'
  use 'fatih/vim-go' -- just used for gohtmltmpl syntax highlighting
  use 'p00f/nvim-ts-rainbow'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/playground', cmd = {'TSPlaygroundToggle'}}

  -- UI + Utils
  use 'kyazdani42/nvim-web-devicons'
  use {'yamatsum/nvim-nonicons', requires = {'kyazdani42/nvim-web-devicons'}}
  use 'kyazdani42/nvim-tree.lua'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'airblade/vim-gitgutter'
  use 'hoob3rt/lualine.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'
  use 'glepnir/dashboard-nvim'
  use('f-person/git-blame.nvim')
  use 'kosayoda/nvim-lightbulb'
  use 'RRethy/vim-illuminate'
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }

  -- Theme
  use 'folke/tokyonight.nvim'
end)
