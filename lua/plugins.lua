return {
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

  -- lsp
  {
    -- p-lsp.lua and p-mason.lua
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  -- treesitter
  {
    -- p-treesitter.lua
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  },

  -- cmp
  {
    -- p-cmp.lua
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

  -- fast Comment
  -- p-comment.lua
  'numToStr/Comment.nvim',

  -- like vscode outline
  -- p-symbol_outline.lua
  'simrat39/symbols-outline.nvim',

  -- jump fastly!
  -- p-leap.lua
  'ggandor/leap.nvim',

  -- 缩进线
  -- {
  --   -- p-indent_blankline.lua
  --   "lukas-reineke/indent-blankline.nvim",
  --   main = "ibl",
  --   opts = {}
  -- },

  -- 顶栏 buffer指示器
  {
    -- p-bufferline.lua
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },


  -- 文件管理器
  {
    -- p-nvimtree.lua
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
      -- optional, for file icons
    },
  },

  -- fzf 拥抱美好生活
  {
    -- p-fzf.lua
    'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'nvim-tree/nvim-web-devicons' }
  },


  -- 内置终端
  {
    -- p-toggleterm.lua
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true
  },

  -- 底栏状态
  {
    -- p-lualine.lua
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },


  -- 括号补全
  {
    -- p-autopairs.lua
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },

  -- markdown
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- transparent!
  {
    'xiyaowong/transparent.nvim'
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
  },
}
