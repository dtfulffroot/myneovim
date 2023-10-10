return {
  -- 用于括号补全
  -- p-autopairs.lua
  {
    -- p-autopairs.lua
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },

  -- 缓冲区栏 也就是上部
  -- p-bufferline.lua
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },

  -- 和补全相关的插件
  -- p-cmp.lua
  {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    {
      'L3MON4D3/LuaSnip',
      dependencies = {
        "rafamadriz/friendly-snippets",
      },
    },
    'saadparwaiz1/cmp_luasnip',
  },

  -- 用来注释代码
  -- p-comment.lua
  'numToStr/Comment.nvim',

  -- fzf
  -- p-fzf.lua
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'nvim-tree/nvim-web-devicons' }
  },

  -- 提供缩进线
  -- p-indentline.lua
  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
  },

  -- jump fastly!
  -- p-leap.lua
  'ggandor/leap.nvim',

  -- language server管理器以及配置
  -- p-lsp.lua
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  -- 底栏
  -- p-lualine.lua
  {
    -- p-lualine.lua
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  -- markdown预览
  -- p-markdown.lua
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- 文件管理器
  -- p-nvimtree.lua
  {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
      -- optional, for file icons
    },
  },

  -- like vscode outline
  -- p-symbol_outline.lua
  'simrat39/symbols-outline.nvim',

  -- 内置终端
  -- p-toggleterm.lua
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },

  -- transparent!
  -- p-transparent.lua
  {
    'xiyaowong/transparent.nvim'
  },

  -- treesitter语法高亮
  -- p-treesitter.lua
  {
    -- p-treesitter.lua
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  },

  -- theme
  {
    "catppuccin/nvim",
    as = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme catppuccin-macchiato]])
    end,
  },


  -- 缩进线
  -- {
  --   -- p-indent_blankline.lua
  --   "lukas-reineke/indent-blankline.nvim",
  --   main = "ibl",
  --   opts = {}
  -- },
}
