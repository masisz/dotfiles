return {
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		opts = function()
			return {
				transparent = true,
			}
		end,
	},
	{
		"catppuccin",
		lazy = true,
		opts = function()
			return {
				transparent_background = true,
			}
		end,
	},
	{
		"rcarriga/nvim-notify",
		opts = function()
			return {
				timeout = 3000,
				background_colour = "#000000",
			}
		end,
	},
}
