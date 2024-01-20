return {
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		opts = { transparent = true },
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
			}
		end,
	},
	-- {
	-- "nvim-lualine/lualine.nvim",
	-- event = "VeryLazy",
	-- opts = {
	-- 	options = {
	-- 		theme = "catppuccin",
	-- 	},
	-- },
	-- },
}
