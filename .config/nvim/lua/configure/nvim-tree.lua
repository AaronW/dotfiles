return {
    'kyazdani42/nvim-tree.lua',
    setup = function()
      -- TODO update these once they're implemented in the setup function
      vim.g.nvim_tree_auto_ignore_ft = { 'fzf', 'term', 'terminal' }

      -- local lsp_icons = require('lsp.icons')
      -- vim.g.nvim_tree_icons = {
      --   lsp = {
      --     hint = lsp_icons.Hint,
      --     info = lsp_icons.Information,
      --     warning = lsp_icons.Warning,
      --     error = lsp_icons.Error,
      --   },
      -- }
    end,
    config = function()
      local icons = require('lsp.icons')
      local tree_cb = require('nvim-tree.config').nvim_tree_callback
      require('nvim-tree').setup({
        actions = {
          open_file = {
            resize_window = false
          }
        },
        diagnostics = {
          enable = true,
          icons = {
            hint = icons.Hint,
            info = icons.Info,
            warning = icons.Warning,
            error = icons.Error,
          },
        },
        filters = {
          custom = { '.git', 'node_modules', '.cache', '.DS_Store', '.netrwhist', 'dist' }
        },
        open_on_setup = true,
        open_on_tab = true,
        renderer = {
          add_trailing = true,
          highlight_git = true,
          indent_markers = { enable = true },
          special_files = {}
        },
        view = {
          width = 30,
          mappings = {
            custom_only = true,
            list = {
              { key = { '<CR>', 'o', '<2-LeftMouse>' }, cb = tree_cb('edit') },
              { key = '<C-v>', cb = tree_cb('vsplit') },
              { key = 'R', cb = tree_cb('refresh') },
              { key = 'a', cb = tree_cb('create') },
              { key = 'd', cb = tree_cb('remove') },
              { key = 'r', cb = tree_cb('rename') },
              { key = '.', cb = tree_cb('cd') },
            },
          },
        },
      })
    end,
  }
