return {
	"stevearc/conform.nvim",
	opts = {
		formatter_by_ft = {
			lua = { "stylua" },
			ocaml = { "ocamlformat" },
			c = { "clang_format" },
			cpp = { "clang_format" },
		},
		formatters = {
			clang_format = {
				prepend_args = { "--style=file", "--fallback-style=LLVM" },
			},
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
