local my_opts = { noremap = true, silent = true }
-- 'ibhagwan/fzf-lua'
vim.keymap.set('n', '<leader>f', ':FzfLua files<CR>', my_opts)