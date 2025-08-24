return {

	--	"vague2k/vague.nvim",
	--	config = function()
	--		require "vague".setup({ transparent = true })
	--		vim.cmd("colorscheme vague")
	--		vim.cmd(":hi statusline guibg=NONE")
	--	end

	--	"EdenEast/nightfox.nvim",
	--	config = function()
	--		require("nightfox").setup({
	--			--			palettes = {
	--			--				terafox = {
	--			--					bg1 = "",
	--			--				},
	--			--			},
	--			options = {
	--				dim_inactive = true,
	--			},
	--		})
	--		vim.cmd("colorscheme terafox")
	--	end,

	-- NORDIC
	--	'AlexvZyl/nordic.nvim',
	--	lazy = false,
	--	priority = 1000,
	--	config = function()
	--		require('nordic').load()
	--	end

	-- KANAGAWA
	--	"rebelot/kanagawa.nvim",
	--	config = function()
	--		vim.cmd("colorscheme kanagawa-wave")
	--		vim.cmd("colorscheme kanagawa-dragon")
	--	end,

	--GRUVBUDDY
	"tjdevries/colorbuddy.nvim",
	config = function()
		vim.cmd.colorscheme("gruvbuddy")
	end,
}
