local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.termguicolors = true

require("lazy").setup({
    -- Dependencies of other plugins
    'nvim-lua/plenary.nvim',
    -- Editing enhancements and tools
    require('configure.autopairs'),
    require('configure.autopairs'),
    require('configure.telescope'),
    'nvim-telescope/telescope-symbols.nvim',
    {'iamcco/markdown-preview.nvim', ft = 'markdown', build = 'cd app && yarn install'},
    require('configure.neotest'),
    'tpope/vim-sleuth',
    -- LSP + Syntax
    require('configure.mason'),
    require('configure.lspconfig'),
    require('configure.luasnip'),
    require('configure.completion'),
    require('configure.trouble'),
    require('configure.treesitter'),
    require('configure.treesitter-playground'),
        -- UI + Utils
    {'yamatsum/nvim-nonicons', dependencies = {'kyazdani42/nvim-web-devicons'}},
    require('configure.gitsigns'),
    require('configure.icons'),
    require('configure.nvim-tree'),
    require('configure.indent-blankline'),
    require('configure.bufferline'),
    require('configure.lualine'),
    require('configure.dashboard'),
    require('configure.colorizer'),
    require('configure.catppuccin'),
})

-- Configuring Neovim
require('disable-builtins')
require('settings')
--require('plugins')
require('keybinds')
-- require('custom-filetypes')
