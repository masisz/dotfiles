-- Easy esc
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("t", "jk", "<ESC>")

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
