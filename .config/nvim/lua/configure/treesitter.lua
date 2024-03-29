return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = { 'p00f/nvim-ts-rainbow', 'nvim-treesitter/nvim-treesitter-textobjects' },
  build = ':TSUpdateSync',
  config = function()
    require('nvim-treesitter.configs').setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = {'gohtmltmpl'}
      },
      playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
      },
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = 1500,
      },
    })
  end,
}
