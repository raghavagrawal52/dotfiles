return {
  "ibhagwan/fzf-lua",
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    {
      "<leader>fd",
      function() require('fzf-lua').files() end,
      desc = "[F]ind files in current [D]ir",
    },

    {
      "<leader>fg",
      function() require('fzf-lua').live_grep() end,
      desc = "Grepping in current dir",
    },

    {
      "<leader><leader>",
      function() require('fzf-lua').buffers() end,
      desc = "[F]ind Buffers",
    },

    {
      "<leader>fc",
      function() require('fzf-lua').files({ cwd = vim.fn.stdpath('config') }) end,
      desc = "Find files in neovim config",
    },

    {
      "<leader>ff",
      function() require('fzf-lua').builtin() end,
      desc = "Find fuzzy finders",
    },

    {
      "<leader>fh",
      function() require('fzf-lua').helptags() end,
      desc = "Find Help",
    },

    {
      "<leader>fk",
      function() require('fzf-lua').keymaps() end,
      desc = "Find Keymaps",
    },

    {
      "<leader>fw",
      function() require('fzf-lua').grep_cword() end,
      desc = "Find current word",
    },

    {
      "<leader>fi",
      function() require('fzf-lua').diagnostics_document() end,
      desc = "[F]ind D[i]agnostics",
    },

    {
      "<leader>fr",
      function() require('fzf-lua').resume() end,
      desc = "[F]ind [R]esume",
    },

    {
      "<leader>fo",
      function() require('fzf-lua').oldfiles() end,
      desc = "[F]ind [O]ldfiles",
    },

    {
      "<leader>/",
      function() require('fzf-lua').lgrep_curbuf() end,
      desc = "[F]ind ",
    },
  }
}
