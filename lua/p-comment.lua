require('Comment').setup {
  mappings = {
    ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
    basic = false,
    ---Extra mapping; `gco`, `gcO`, `gcA`
    extra = false,
  },
}
vim.keymap.set("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", my_opts)
vim.keymap.set("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", my_opts)

