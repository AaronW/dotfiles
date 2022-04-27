-- customize LSP icons
local signs = require('lsp.icons')
for type, icon in pairs(signs) do
  local highlight = 'DiagnosticSign' .. type
  local legacy_highlight = 'LspDiagnosticsSign' .. type
  vim.fn.sign_define(highlight, { text = icon, texthl = highlight, numhl = highlight })
  vim.fn.sign_define(legacy_highlight, { text = icon, texthl = legacy_highlight, numhl = legacy_highlight })
end

local function diagnostic_format(diagnostic)
  if diagnostic.source == 'eslint' or diagnostic.source == 'eslint_d' then
    return string.format('%s %s (%s)', icon_map[diagnostic.severity], diagnostic.message, diagnostic.code)
  end

  return string.format('%s %s', icon_map[diagnostic.severity], diagnostic.message)
end
