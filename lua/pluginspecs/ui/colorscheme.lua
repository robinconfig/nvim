local M = {
	--- https://github.com/oonamo/ef-themes.nvim
	{
		"oonamo/ef-themes.nvim",
		name = "ef-themes",
		priority = 1000,
	},
	--- https://github.com/EdenEast/nightfox.nvim
	{
		"EdenEast/nightfox.nvim",
		name = "nightfox",
		lazy = false,
		priority = 1000,
	},
	--- https://github.com/catppuccin/nvim
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	-- tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = { style = "moon" },
	},
	--- https://github.com/rose-pine/neovim
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
	},
	--- https://github.com/sainnhe/edge
	{
		"sainnhe/edge",
		name = "edge",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.g.edge_enable_italic = true
			-- vim.cmd.colorscheme('edge')
		end
	},
	--- https://github.com/uloco/bluloco.nvim
	--- scheme: bluloco support dark, light
	{
		'uloco/bluloco.nvim',
		lazy = false,
		priority = 1000,
		dependencies = { 'rktjmp/lush.nvim' },
	},
	--- https://github.com/olimorris/onedarkpro.nvim
	--- scheme: onedark, onelight, onedark_vivid, onedark_dark, vaporwave
	{
		"olimorris/onedarkpro.nvim",
		lazy = false,
		priority = 1000, -- Ensure it loads first
	},
	--- https://github.com/thesimonho/kanagawa-paper.nvim?tab=readme-ov-file
	--- scheme: kanagawa-paper
	{
		"thesimonho/kanagawa-paper.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
}

return M
