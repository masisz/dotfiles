return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		-- opts = { style = "moon" },
		opts = function()
			return {
				transparent = false,
			}
		end,
	},
	{
		"folke/tokyonight.nvim",
		-- "rebelot/kanagawa.nvim",
		lazy = true,
		priority = 1000,
		opts = { style = "moon" },
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
#		opts = {
#			transparent = true
#		}
	},

}
