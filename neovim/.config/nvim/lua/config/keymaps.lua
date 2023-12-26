-- easy esc
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("t", "jk", "<ESC>")

-- move cursor on insert-mode
vim.keymap.set("i", "<C-j>", "j")
vim.keymap.set("i", "<C-k>", "k")
vim.keymap.set("i", "<C-h>", "h")
vim.keymap.set("i", "<C-l>", "l")

vim.api.nvim_set_keymap("n", "<Leader>fB", ":Telescope file_browser<CR>", { noremap = true })

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
	"n",
	"<Leader>fB",
	":Telescope file_browser path=%:p:h select_buffer=true<CR>",
	{ noremap = true }
)
