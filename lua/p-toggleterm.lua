local my_opts = { noremap = true, silent = true }
-- 'akinsho/toggleterm.nvim
require("toggleterm").setup {
  open_mapping = [[<A-1>]],
  autochdir = true,
  direction = 'vertical',
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
}
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], my_opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], my_opts)
