local M = {}

M.filetype_patterns = {
  ['css'] = { '*.css', '*.scss' },
  ['html'] = { '*.html' },
  ['json'] = { '*.json', '*.jsonc' },
  ['typescript'] = { '*.ts', '*.tsx', '*.js', '*.jsx' },
  ['lua'] = { '*.lua' },
  ['rust'] = { '*.rs' },
  ['go'] = { '*.go', 'go.mod' },
}

M.filetypes = vim.tbl_keys(M.filetype_patterns)

return M
