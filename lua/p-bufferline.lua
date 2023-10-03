local my_opts = { noremap = true, silent = true }
require("bufferline").setup {}
vim.keymap.set('n', '<leader>bn', ':BufferLineCycleNext<CR>', my_opts)
vim.keymap.set('n', '<leader>bp', ':BufferLineCyclePrev<CR>', my_opts)
vim.keymap.set('n', '<leader>bl', ':BufferLineCloseRight<CR>', my_opts)
vim.keymap.set('n', '<leader>bh', ':BufferLineCloseLeft<CR>', my_opts)