return {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'onsails/lspkind-nvim',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-cmdline',
      { 'mtoohey31/cmp-fish', ft = 'fish' },
    },
    -- after = { 'nvim-autopairs', 'LuaSnip' }, # Move to `dependencies` if still needed
    config = function()
      local luasnip = require('luasnip')
      luasnip.config.setup({
        history = true,
        updateevents = 'TextChanged,TextChangedI',
      })
      local cmp = require('cmp')
      local shared_config = {
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        preselect = cmp.PreselectMode.None,
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = {
          completeopt = 'menu,menuone,noinsert',
        },
        mapping = require('keymap').cmp_mappings(),
        formatting = {
          format = require('lspkind').cmp_format({ with_text = true }),
        },
        experimental = {
          ghost_text = true,
        },
      }

      -- diagnostics thinks `setup` isn't a function
      -- because of how `setup.cmdline` is called as
      -- a function below
      ---@diagnostic disable-next-line: redundant-parameter
      cmp.setup(vim.tbl_deep_extend('force', shared_config, {
        sources = {
          { name = 'luasnip', priority = 100 },
          { name = 'nvim_lsp', priority = 90 },
          { name = 'nvim_lsp_signature_help' },
          { name = 'nvim_lua', priority = 90 },
          { name = 'fish' },
          { name = 'path', priority = 5 },
          { name = 'buffer', priority = 1 },
        },
      }))

      cmp.setup.cmdline(':', vim.tbl_deep_extend('force', shared_config, { sources = { { name = 'cmdline' } } }))
      cmp.setup.cmdline('/', vim.tbl_deep_extend('force', shared_config, { sources = { { name = 'buffer' } } }))
    end,
  }
