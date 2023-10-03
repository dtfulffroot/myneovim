local my_opts = { noremap = true, silent = true }
-- 'akinsho/toggleterm.nvim
require("toggleterm").setup {
  open_mapping = [[<A-1>]],
  autochdir = true,
  direction = 'float',
}
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], my_opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], my_opts)
