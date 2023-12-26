return {
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	{
		"telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			config = function()
				require("telescope").load_extension("fzf")
			end,
		},
		{
			"neovim/nvim-lspconfig",
			opts = {
				servers = {
					solargraph = {},
				},
			},
		},
		{
			"nvim-treesitter/nvim-treesitter",
			opts = {
				ensure_installed = {
					"bash",
					"html",
					"javascript",
					"json",
					"lua",
					"markdown",
					"markdown_inline",
					"yaml",
					"ruby",
				},
			},
		},
	},
}
