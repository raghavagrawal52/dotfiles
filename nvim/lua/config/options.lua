local vim = vim
-- Configuring everything related to indenting
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.breakindent = true

-- Syncing clipboard betweeb OS and neovim
vim.opt.clipboard = 'unnamedplus'

-- Always show relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Show line under the cursor
vim.opt.cursorline = false

-- Store undos between sessions
vim.opt.undofile = true

-- Hide mode from cmd, already present in status line
vim.opt.showmode = false

-- Case-insensitive searching unless \C or one or more captial letters in the search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- How new splits are opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Scroll off - to have some space below and above the cursor
vim.opt.scrolloff = 28

vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('trim_whitespaces', { clear = true }),
  desc = 'Trim trailing white spaces',
  pattern = 'bash,c,cpp,lua,java,go,ocaml,php,javascript,make,python,rust,perl,sql,markdown',
  callback = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '<buffer>',
      -- Trim trailing whitespaces
      callback = function()
        -- Save cursor position to restore later
        local curpos = vim.api.nvim_win_get_cursor(0)
        -- Search and replace trailing whitespaces
        vim.cmd([[keeppatterns %s/\s\+$//e]])
        vim.api.nvim_win_set_cursor(0, curpos)
      end,
    })
  end,
})
