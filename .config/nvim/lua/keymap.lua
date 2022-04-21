local M = {}

local lsp_keymaps_bound_bufnrs = {}

function M.default_keymaps()
  local h = require('legendary.helpers')
  return {}
end

function M.lsp_keymaps(bufnr)
  if vim.tbl_contains(lsp_keymaps_bound_bufnrs, bufnr) then
    return {}
  end

  table.insert(lsp_keymaps_bound_bufnrs, bufnr)
  local h = require('legendary.helpers')
  return {}
end

function M.cmp_mappings()
  local cmp = require('cmp')
  local luasnip = require('luasnip')
  return {
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      'i',
      's',
      'c',
    }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif require('utils').has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, {
      'i',
      's',
      'c',
    }),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping({ c = cmp.mapping.confirm({ select = true }) }),
    ['<Right>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.mapping.confirm({ select = true })()
      else
        fallback()
      end
    end, {
      'c',
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<ESC>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.mapping.close()()
      else
        fallback()
      end
    end, {
      'i',
      'c',
    }),
  }
end

return M
