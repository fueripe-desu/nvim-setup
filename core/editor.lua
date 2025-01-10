vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.guicursor = ""

-- General configurations
vim.opt.backspace = {"indent", "eol", "start"}
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- Tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.smartindent = true

-- List mode
vim.opt.list = true
vim.opt.listchars = { tab = '→ ', space = '·' }

-- Line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Backup files
vim.opt.backup = false

-- Wrapping
vim.opt.wrap = false

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- 24-bit Color
vim.opt.termguicolors = true

-- Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")



