return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
		vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
		require("catppuccin").setup({
            integrations = {
                gitsigns = true,
                nvimtree = true,
                telescope = true,
                treesitter = true,
            },
        })
		vim.api.nvim_command "colorscheme catppuccin"
	end
}
