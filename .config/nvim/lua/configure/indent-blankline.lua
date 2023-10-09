return {
  'lukas-reineke/indent-blankline.nvim',
  main = "ibl", opts = {},
  config = function()
    require('ibl').setup({
      exclude = {
        buftypes = {'NvimTree', 'terminal', 'term', 'packer', 'dashboard', 'gitcommit', 'fugitive'},
        filetypes = {'NvimTree', 'terminal', 'term', 'packer', 'dashboard', 'gitcommit', 'fugitive'}
      },
      -- context_patterns = {'class', 'function', 'method', 'block', 'list_literal', 'selector', '^if', '^table', 'if_statement', 'while', 'for', 'object', 'start_tag', 'open_tag', 'element'},
      -- show_first_indent_level = true,
      -- show_trailing_blankline_indent = false,
    })
  end,
}
