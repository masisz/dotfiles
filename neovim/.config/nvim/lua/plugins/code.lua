return {
	"telescope.nvim",
	dependencies = {
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-telescope/telescope-file-browser.nvim",
	},
	keys = function()
		return {
			{
				"<leader>fP",
				function()
					require("telescope.builtin").find_files({
						cwd = require("lazy.core.config").options.root,
					})
				end,
				desc = "Find Plugin File",
			},
			{
				"<leader>ff",
				function()
					local builtin = require("telescope.builtin")
					builtin.find_files({
						no_ignore = false,
						hidden = true,
					})
				end,
				desc = "Find Files(cwd)",
			},
			{
				"<leader>fg",
				function()
					local builtin = require("telescope.builtin")
					builtin.live_grep()
				end,
				desc = "Live Grep(cwd)",
			},
			{
				"<leader>fb",
				function()
					local builtin = require("telescope.builtin")
					builtin.buffers()
				end,
				desc = "File Buffers(cwd)",
			},
			{
				"<leader>fh",
				function()
					local builtin = require("telescope.builtin")
					builtin.help_tags()
				end,
				desc = "Help Tags",
			},
			{
				";;",
				function()
					local builtin = require("telescope.builtin")
					builtin.resume()
				end,
				desc = "Resume",
			},
			{
				"<leader>fd",
				function()
					local builtin = require("telescope.builtin")
					builtin.diagnostics()
				end,
				desc = "Lists diagnostics",
			},
			{
				"<leader>fs",
				function()
					local builtin = require("telescope.builtin")
					builtin.treesitter()
				end,
				desc = "Lists Function names from TreeSitter",
			},
			{
				"<leader>e",
				function()
					local telescope = require("telescope")

					local function telescope_buffer_dir()
						return vim.fn.expand("%:p:h")
					end

					telescope.extensions.file_browser.file_browser({
						path = "%:p:h",
						cwd = telescope_buffer_dir(),
						respect_gitignore = false,
						hidden = true,
						grouped = true,
						previewer = false,
						initial_mode = "normal",
						layout_config = { height = 40 },
					})
				end,
				desc = "File Browser(cwd)",
			},
		}
	end,
}
