local my_opts = { noremap = true, silent = true }
vim.keymap.set('n', '<A-2>', ':NvimTreeToggle<CR>', my_opts)
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  sync_root_with_cwd = true,
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
