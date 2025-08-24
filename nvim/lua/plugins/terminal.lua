vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

local create_terminal = function()
	vim.api.nvim_create_autocmd('TermOpen', {
		group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
		callback = function()
			vim.opt.number = false
			vim.opt.relativenumber = false
			vim.opt.cursorline = true
		end,
	})

	local job_id = 0
	vim.keymap.set("n", "<space>st", function()
		vim.cmd.vnew()
		vim.cmd.term()
		vim.api.nvim_win_set_width(0, 100)
		job_id = vim.bo.channel
	end)

	vim.keymap.set("n", "<space>sth", function()
		vim.cmd.new()
		vim.cmd.term()
		vim.cmd.wincmd("J")
		vim.api.nvim_win_set_height(0, 15)
	end)

	vim.keymap.set("n", "<space>tb", function()
		vim.fn.chansend(job_id, { "cargo build\r\n" })
	end)

	vim.keymap.set("n", "<space>tl", function()
		vim.fn.chansend(job_id, { "clear\r\n" })
	end)

	vim.keymap.set("n", "<space>tr", function()
		vim.fn.chansend(job_id, { "cargo run\r\n" })
	end)
end

return { create_terminal() }
