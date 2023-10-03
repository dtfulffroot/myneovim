# 自己使用的neovim配置
目录结构比较简单, 使用lazy.nvim作为插件管理器, 其中`lua/plugins.lua`是一个下载插件的配置, 里面都是下载的插件. 而他们分别的配置都处在p开头的文件里面.

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