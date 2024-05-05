-- diagnostics = { disable = { 'missing-fields' } }
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
      -- 直接写死固定 以免在不同版本下表现不同
      "#4E5156",
      -- { fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui") }
    },
  },

  line_num = {
    enable = false,
    use_treesitter = false,
    style = "#a4a6b2",
  },

  blank = {
    enable = false,
  },
})
