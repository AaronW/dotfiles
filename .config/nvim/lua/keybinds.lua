-- shortcut for vim.api.nvim_set_keymap
local map = vim.api.nvim_set_keymap

-- shortcut for vim.api.nvim_replace_termcodes
local function t(str)
    -- Adjust boolean arguments as needed
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

-----------------
-- nvim-tree
-----------------
-- toggle nvim-tree with <F3>
map('n', '<F3>', t':NvimTreeToggle<CR>', { noremap = true, silent = true })

-----------------
-- Telescope
-----------------
-- ff find files
map('n', 'ff', t':lua require("telescope.builtin").find_files()<CR>', { silent = true })
-- fb find buffers
map('n', 'fb', t':lua require("telescope.builtin").buffers()<CR>', { silent = true })
-- ft find text (ripgrep)
map('n', 'ft', t':lua require("telescope.builtin").live_grep()<CR>', { silent = true })
-- fh to search history
map('n', 'fh', t':lua require("telescope.builtin").oldfiles()<CR>', { silent = true })
-- <leader>v to vert split, then find a file for the new pane
map('n', '<leader>v', t':vsplit<CR>:lua require("telescope.builtin").find_files()<CR>', { silent = true })
-- <leader>b to vert split, then find open buffers to put in the new pane
map('n', '<leader>b', t':vsplit<CR>:lua require("telescope.builtin").buffers()<CR>', { silent = true })

-----------------
-- Neotest
-----------------
map('n', '<leader>q', t'lua require("neotest").run.run()', { silent = true })
map('n', '<leader>tt', t'lua require("neotest").run.run(vim.fn.expand("%"))', { silent = true })
