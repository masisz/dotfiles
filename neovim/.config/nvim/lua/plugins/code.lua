return {
	{
		"nvim-treesitter/nvim-treesitter",
		opt = {
			ensure_installed = {
				"bash",
				"css",
				"csv",
				"gitignore",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"ruby",
				"sql",
				"xml",
				"yaml",
			},
		},
	},
	{
		"simrat39/symbols-outline.nvim",
		cmd = "SymbolsOuline",
		keys = {
			{
				"<leader>cs",
				"<cmd>SymbolsOuline<cr>",
				desc = "SymbolsOuline",
				opt = {
					position = "right",
				},
			},
		},
	},
}
