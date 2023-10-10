require("hlchunk").setup({
  chunk = {
    enable = false,
  },

  indent = {
    enable = true,
    use_treesitter = false,
    chars = {
      "|",
    },
    style = {
      { fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui") }
    },
  },

  line_num = {
    enable = true,
    use_treesitter = false,
    style = "#a4a6b2",
  },

  blank = {
    enable = false,
  },

})
