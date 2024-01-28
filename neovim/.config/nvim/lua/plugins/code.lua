return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"bash",
				"c",
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
				"rust",
				"scss",
				"sql",
				"xml",
				"yaml",
			})
		end,
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
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"clangd",
				"css-lsp",
				"emmet-ls",
				"html-lsp",
				"neocmakelsp",
				"stylua",
				"solargraph",
				"shellcheck",
				"shfmt",
				"tailwindcss-language-server",
				"typescript-language-server",
			})
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		keys = function()
			return {}
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-emoji" },
		opts = function(_, opts)
			local has_words_before = function()
				unpack = unpack or table.unpack
				local line, col = unpack(vim.api.nvim_win_get_cursor(0))
				return col ~= 0
					and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
			end

			local luasnip = require("luasnip")
			local cmp = require("cmp")

			opts.mapping = vim.tbl_extend("force", opts.mapping, {
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					elseif has_words_before() then
						cmp.complete()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			})
		end,
	},
	{
		"echasnovski/mini.surround",
		opts = {
			mappings = {
				add = "sa",
				delete = "sd",
				find = "sf",
				find_left = "sF",
				highlight = "sh",
				replace = "sr",
				update_n_lines = "sn",
				suffix_last = "l",
				suffix_next = "n",
			},
		},
	},
	{
		"RRethy/nvim-treesitter-endwise",
		opts = {
			endwise = {
				enable = true,
			},
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
