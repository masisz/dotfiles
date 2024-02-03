return {
	{
		"telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-file-browser.nvim",
		},
		keys = function()
			return {
				{
					"<leader>fp",
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
					"<leader>fr",
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
		config = function(_, opts)
			local telescope = require("telescope")
			local trouble = require("trouble.providers.telescope")

			opts.defaults = {
				mappings = {
					i = { ["<c-t>"] = trouble.open_with_trouble },
					n = { ["<c-t>"] = trouble.open_with_trouble },
				},
			}

			telescope.setup(opts)
			telescope.load_extension("fzf")
			telescope.load_extension("file_browser")
		end,
	},
	{
		"alexghergh/nvim-tmux-navigation",
		lazy = true,
		event = "VeryLazy",
		config = function()
			local nvim_tmux_nav = require("nvim-tmux-navigation")
			nvim_tmux_nav.setup({
				disable_when_zoomed = true,
				keybinding = {
					left = "<C-h>",
					down = "<C-j>",
					up = "<C-k>",
					right = "<C-l>",
					last_actinve = "<C-\\>",
					next = "<C-Space>",
				},
			})
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		lazy = true,
	},
}
