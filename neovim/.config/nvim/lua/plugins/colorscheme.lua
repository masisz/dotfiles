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
		"rebelot/kanagawa.nvim",
		lazy = true,
		opts = { transparent = true },
	},
}
