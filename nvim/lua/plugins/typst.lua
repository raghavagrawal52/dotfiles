return {
	'chomosuke/typst-preview.nvim',
	ft = 'typst',
	version = '1.*',
	opts = {
		invert_colors = "auto",
	},
	config = function()
		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, { pattern = "*.typ", command = "TypstPreviewToggle", })
		vim.keymap.set("n", "<space>tp", ":TypstPreview<CR>")
	end
}
