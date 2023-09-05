return {
  'williamboman/mason.nvim',
  dependencies = {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  -- before = 'nvim-lspconfig', # TODO Migrate this to lazy.nvim or delete?
  config = function()
    require('mason').setup()
    require('mason-tool-installer').setup({
      auto_update = true,
      ensure_installed = {
        -- LSP servers
        'css-lsp',
        'html-lsp',
        'json-lsp',
        'typescript-language-server',
        'rust-analyzer',
        -- 'gopls',
        'lua-language-server',

        -- linters
        'eslint_d',
        'shellcheck',
        -- 'luacheck',
        'codespell',

        -- formatters
        'prettierd',
        'stylua',
        -- 'shfmt',
      },
    })
  end,
}
