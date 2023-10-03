-- leader设置为空格
vim.g.mapleader = " "


-- 和自带的插件有关?
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- basic config from lunarvim
-- 从lunarvim的默认配置里面复制过来
vim.opt.backup = false            -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2             -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "99999"     -- fixes indentline for now
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0          -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"    -- the encoding written to a file
vim.opt.foldmethod = "manual"     -- folding set to "expr" for treesitter based folding
vim.opt.foldexpr = ""             -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.hidden = true             -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true           -- highlight all matches on previous search pattern
vim.opt.mouse = "a"               -- allow the mouse to be used in neovim
vim.opt.pumheight = 10            -- pop up menu height
vim.opt.showmode = false          -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2           -- always show tabs

-- below 3 lines can smart search word.
-- if a word only cantain lowercase letters
-- then will search both upper and lower
-- else absolutely match
vim.opt.smartcase = true   -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.ignorecase = true

vim.opt.splitbelow = true                  -- force all horizontal splits to go below current window
vim.opt.splitright = true                  -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                   -- creates a swapfile
vim.opt.termguicolors = true               -- set term gui colors (most terminals support this)
-- vim.opt.timeoutlen = 100                   -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.title = true                       -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile = true                    -- enable persistent undo
vim.opt.updatetime = 300                   -- faster completion
vim.opt.writebackup = false                -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.expandtab = true                   -- convert tabs to spaces
vim.opt.shiftwidth = 2                     -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                        -- insert 2 spaces for a tab
vim.opt.cursorline = true                  -- highlight the current line
vim.opt.number = true                      -- set numbered lines
vim.opt.relativenumber = true              -- set relative numbered lines
vim.opt.numberwidth = 2                    -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                 -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = false                       -- display lines as one long line
vim.opt.scrolloff = 4                      -- is one of my fav
vim.opt.sidescrolloff = 8

-- vim.cmd.colorscheme "catppuccin-macchiato"
vim.keymap.set('i', 'jk', '<ESC>')
vim.o.timeout = true
vim.o.timeoutlen = 500


-- make .zshrc highlight like bash file
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { ".zshrc" },
  callback = function()
    require("nvim-treesitter.highlight").attach(0, "bash")
  end
})


-- I like 4 spaces indent
vim.cmd('autocmd FileType cpp setlocal shiftwidth=4')

-- show copy filed when copy
vim.cmd [[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END
]]


vim.cmd [[
set signcolumn=yes
autocmd CursorHold * lua vim.lsp.buf.document_highlight()
autocmd CursorMoved * lua vim.lsp.buf.clear_references()
]]

-- autocmd created
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  callback = function()
    vim.lsp.inlay_hint(0, true)
  end
})
