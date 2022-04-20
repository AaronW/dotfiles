local paths = require('paths')

local packer = require('packer')

packer.startup({
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

      -- Dependencies of other plugins
      use('nvim-lua/plenary.nvim')

    -- Editing enhancements and tools
    -- use(require('configure.autopairs'))
    use(require('configure.telescope'))
    use 'nvim-telescope/telescope-symbols.nvim'
    use {'iamcco/markdown-preview.nvim', ft = 'markdown', run = 'cd app && yarn install'}

    -- Tim Pope
    use 'tpope/vim-sleuth'

    -- LSP + Syntax
    use 'neovim/nvim-lspconfig'
    use('ray-x/lsp_signature.nvim')
    use 'hrsh7th/nvim-compe'
    use 'onsails/lspkind-nvim'
    --use(require('configure.lspkind'))
    use({ 'dag/vim-fish', ft = 'fish' })
    use 'sheerun/vim-polyglot'
    --use {'prettier/vim-prettier', run = 'yarn install'}
    use(require('configure.trouble'))
    use 'fatih/vim-go' -- just used for gohtmltmpl syntax highlighting
    use 'p00f/nvim-ts-rainbow'
    use(require('configure.treesitter'))
    use(require('configure.treesitter-playground'))

    -- UI + Utils
    use 'kyazdani42/nvim-web-devicons'
    use {'yamatsum/nvim-nonicons', requires = {'kyazdani42/nvim-web-devicons'}}
    use(require('configure.nvim-tree'))
    use(require('configure.indent-blankline'))
    use 'airblade/vim-gitgutter'
    use(require('configure.lualine'))
    use(require('configure.bufferline'))
    use(require('configure.colorizer'))
    use(require('configure.dashboard'))
    use(require('configure.git-blame'))
    use 'kosayoda/nvim-lightbulb'
    use 'RRethy/vim-illuminate'
    use {
      "folke/which-key.nvim",
      config = function()
        require("which-key").setup {}
      end
    }
    --use(require('configure.nvim-notify'))

    -- Theme
    use(require('configure.tokyonight'))
  end,
  config = {
    profile = {
      enable = true,
      threshold = 1,
    },
  },
})

-- Automatically set up config if we just bootstrapped packer by git cloning it
if packer_bootstrap then
  require('packer').sync()
end
