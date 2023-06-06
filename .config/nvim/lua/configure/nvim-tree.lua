--
-- This function has been generated from your
--   view.mappings.list
--   view.mappings.custom_only
--   remove_keymaps
--
-- You should add this function to your configuration and set on_attach = on_attach in the nvim-tree setup call.
--
-- Although care was taken to ensure correctness and completeness, your review is required.
--
-- Please check for the following issues in auto generated content:
--   "Mappings removed" is as you expect
--   "Mappings migrated" are correct
--
-- Please see https://github.com/nvim-tree/nvim-tree.lua/wiki/Migrating-To-on_attach for assistance in migrating.
--

local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end


  -- Default mappings not inserted as:
  --  remove_keymaps = true
  --  OR
  --  view.mappings.custom_only = true


  -- Mappings migrated from view.mappings.list
  --
  -- You will need to insert "your code goes here" for any mappings with a custom action_cb
  vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', '<C-v>', api.node.open.vertical, opts('Open: Vertical Split'))
  vim.keymap.set('n', 'R', api.tree.reload, opts('Refresh'))
  vim.keymap.set('n', 'a', api.fs.create, opts('Create'))
  vim.keymap.set('n', 'd', api.fs.remove, opts('Delete'))
  vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))
  vim.keymap.set('n', '.', api.tree.change_root_to_node, opts('CD'))

end

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
        on_attach = on_attach,
        open_on_tab = true,
        renderer = {
          add_trailing = true,
          highlight_git = true,
          indent_markers = { enable = true },
          special_files = {}
        },
        view = {
          width = 30,
        },
      })
    end,
  }
