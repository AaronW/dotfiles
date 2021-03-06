return {
  'folke/tokyonight.nvim',
  config = function()
    local g = vim.g
    --local sidebarColor = '#15181b'
    --local backgroundColor = '#24292e'
    g.tokyonight_style = 'storm'
    g.tokyonight_sidebars = {'packer', 'NvimTree', 'term', 'terminal', 'FTerm'}
    --g.tokyonight_colors = {bg = backgroundColor, bg_dark = backgroundColor, bg_sidebar = sidebarColor, bg_float = sidebarColor}

    vim.cmd('colorscheme tokyonight')

    -- TODO has to be required after theme is set up for highlighting
    --require('configure-trailing-whitespace')
    end,
  }
