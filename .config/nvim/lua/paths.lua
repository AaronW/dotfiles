local M = {}

function M.join(...)
  return table.concat({ ... }, '/')
end

function M.relative_cwd()
  return M.relative_filepath(vim.loop.cwd(), true)
end

function M.relative_filepath(path, replace_home_with_tilde)
  path = path or vim.fn.expand('%')
  -- ensure path is relative to cwd
  local new_path = path:gsub(require('utils').pattern_to_literal(vim.loop.cwd()), '')
  -- if filepath is relative to cwd, ensure it doesn't have a leading /
  if #path ~= #new_path then
    if new_path:sub(1, 1) == '/' then
      new_path = new_path:sub(2)
    end

    print(new_path)
    path = new_path
  end

  -- replace $HOME with ~
  if replace_home_with_tilde then
    path = path:gsub(require('utils').pattern_to_literal(require('paths').home), '~/')
  else
    path = path:gsub(require('utils').pattern_to_literal(require('paths').home), '')
  end
  if vim.fn.winwidth(0) <= 84 then
    path = vim.fn.pathshorten(path)
  end

  if not path or #path == 0 then
    return ''
  end

  return path
end

M.home = os.getenv('HOME')

M.config = M.join(M.home, '.config')

return M
