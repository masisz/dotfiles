function Disable()
	if vim.fn.has("mac") == 1 then
		vim.fn.system("im-select com.apple.keylayout.US")
		-- print("IME OFF")
	end
end

-- IME OFF to back to normal mode.
vim.api.nvim_create_augroup("ime", {})
vim.api.nvim_create_autocmd("insertleave", {
	group = "ime",
	callback = function()
		Disable()
	end,
})
