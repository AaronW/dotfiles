local paths = require('paths')

local packer = require('packer')

packer.startup({
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Dependencies of other plugins
    use('nvim-lua/plenary.nvim')

    -- Editing enhancements and tools
    use(require('configure.autopairs'))
    use(require('configure.telescope'))
    use 'nvim-telescope/telescope-symbols.nvim'
    use {'iamcco/markdown-preview.nvim', ft = 'markdown', run = 'cd app && yarn install'}
    use(require('configure.neotest'))

    -- Tim Pope
    use 'tpope/vim-sleuth'

    -- LSP + Syntax
    use(require('configure.mason'))
    use(require('configure.lspconfig'))
    use(require('configure.luasnip'))
    use(require('configure.completion'))
    use(require('configure.trouble'))
    -- use 'p00f/nvim-ts-rainbow'
    use(require('configure.treesitter'))
    use(require('configure.treesitter-playground'))

    -- UI + Utils
    use {'yamatsum/nvim-nonicons', requires = {'nvim-tree/nvim-web-devicons'}}
    use(require('configure.gitsigns'))
    use(require('configure.icons'))
    use(require('configure.nvim-tree'))
    use(require('configure.indent-blankline'))
    use(require('configure.lualine'))
    use(require('configure.bufferline'))
    use(require('configure.colorizer'))
    use(require('configure.dashboard'))
    -- use 'kosayoda/nvim-lightbulb'
    -- use 'RRethy/vim-illuminate'
    --use(require('configure.nvim-notify'))

    -- Theme
    use(require('configure.catppuccin'))
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
