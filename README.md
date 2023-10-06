# 关于目录结构
目录结构比较简单, 使用lazy.nvim作为插件管理器, 其中`lua/plugins.lua`是一个下载插件的配置, 里面都是下载的插件. 而他们分别的配置都处在p开头的文件里面.

而`lua/plugins_config.lua`则是用来启动对应的配置的.

而关于文件和插件的对应关系, 可以查看plugins.lua里面的注释:

```lua
-- lsp
{
  -- p-lsp.lua and p-mason.lua
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
},
```

例如这里, 就说明有关这三个文件的配置可以在`p-lsp.lua and p-mason.lua`里面找到.

当然在其他文件里面也会有对应的指示, 比如在p-autopairs.lua这个文件里面:

```lua
-- 'windwp/nvim-autopairs'
require("nvim-autopairs").setup {}
-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
```
在最顶上一般都会标注出来配置的是哪一个插件的名字.

# 有哪些插件?
这个比较好解决, plugins.lua里面就是安装的全部插件, 如果有哪些不好用也可以在不卸载的前提下面不在plugins_config.lua里面加载. 当然也有一些需要注意的点, 比如有一些插件是不需要加载生效的, 请看下面一些示例:

p-mason.lua:
```lua
require("mason").setup()
require("mason-lspconfig").setup()
```

这里想要启动mason和mason-lspconfig插件就需要require然后setup, 然后plugins_config.lua包含这个p-mason.lua, 然后在init.lua里面包含plugins_config.lua, 也就是算它启动了.

但是, p-fzf.lua:
```lua
local my_opts = { noremap = true, silent = true }
-- 'ibhagwan/fzf-lua'
vim.keymap.set('n', '<leader>f', ':FzfLua files<CR>', my_opts)
```
可以看到在p-fzf.lua文件里面就没有类似的语句, 只有配置.

所以其实在不卸载的情况下"禁用"某个插件说法其实是不准确的. 但是不管怎么样, plugins.lua里面有清晰的插件列表.

# 快捷键
因为我全程都没有赋值额外变量, 也就是快捷键尽量都是通过vim.keymap.set来设置, 所以全部快捷键也算是比较好找:
```lua
p-toggleterm.lua
8:vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], my_opts)
9:vim.keymap.set('t', 'jk', [[<C-\><C-n>]], my_opts)

p-nvimtree.lua
3:vim.keymap.set('n', '<A-2>', ':NvimTreeToggle<CR>', my_opts)

p-bufferline.lua
3:vim.keymap.set('n', '<leader>bn', ':BufferLineCycleNext<CR>', my_opts)
4:vim.keymap.set('n', '<leader>bp', ':BufferLineCyclePrev<CR>', my_opts)
5:vim.keymap.set('n', '<leader>bl', ':BufferLineCloseRight<CR>', my_opts)
6:vim.keymap.set('n', '<leader>bh', ':BufferLineCloseLeft<CR>', my_opts)

p-fzf.lua
3:vim.keymap.set('n', '<leader>f', ':FzfLua files<CR>', my_opts)

p-symbol_outline.lua
67:vim.keymap.set("n", "<A-3>", ":SymbolsOutline<CR>")

p-comment.lua
10:vim.keymap.set("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", my_opts)
11:vim.keymap.set("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", my_opts)

p-lsp.lua
43:vim.keymap.set('n', '<space>le', vim.diagnostic.open_float)
44:vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
45:vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
46:vim.keymap.set('n', '<space>lq', vim.diagnostic.setloclist)
59:    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
60:    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
61:    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
62:    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
63:    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
64:    vim.keymap.set('n', '<space>lwa', vim.lsp.buf.add_workspace_folder, opts)
65:    vim.keymap.set('n', '<space>lwr', vim.lsp.buf.remove_workspace_folder, opts)
66:    vim.keymap.set('n', '<space>lwl', function()
69:    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
70:    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
71:    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
72:    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
73:    vim.keymap.set('n', '<space>lf', function()
80:vim.keymap.set(

base.lua
62:vim.keymap.set('i', 'jk', '<ESC>')
```

这里面每个插件对应的快捷键都能看出来, 当然将来文档也可能会比较旧, 不过也就是在lua目录下面一个rg的事情.

其中p-lsp.lua有一个keymap没打印完, 是这个:
```lua
-- neovim 0.10.0 inlay hints
if vim.lsp.inlay_hint then
  vim.keymap.set(
    "n",
    "<leader>lh",
    function()
      vim.lsp.inlay_hint(0, nil)
    end,
    { desc = "Toggle Inlay Hints" }
  )
end
```

