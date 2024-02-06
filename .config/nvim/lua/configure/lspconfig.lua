return {
    'neovim/nvim-lspconfig',
    dependencies = {
      'nvimtools/none-ls.nvim',
    },
    config = function()
      require('lsp')
    end,
}
