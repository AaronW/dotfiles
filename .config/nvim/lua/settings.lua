vim.opt.compatible = false
vim.opt.cursorline = true
vim.opt.mouse = 'a'
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.autochdir = false
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.opt.syntax = 'on'

-- required for nvim-compe
vim.o.completeopt = 'menuone,noselect'

-- setting to 0 makes it default to value of tabstop
vim.opt.shiftwidth = 0
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wildignore:append({'*.DS_Store'})

-- add @, -, and $ as keywords for full SCSS support
vim.opt.iskeyword:append({'@-@', '-', '$'})
