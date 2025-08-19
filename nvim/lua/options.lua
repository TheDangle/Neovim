-- Set up editor options
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set autoindent")

vim.opt.nu = true -- Line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.opt.mouse = "a" -- Enable mouse support
vim.opt.showmode = false -- Don't show the current mode in the status line
vim.opt.signcolumn = "yes" -- Always show the sign column to prevent text shifting
vim.opt.wrap = false -- Don't wrap lines
vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = true -- Incremental search

-- Ignore case in search but override with uppercase
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- highlight current line and show tabs and spaces
vim.opt.cursorline = true
vim.opt.list = true
vim.opt.listchars = { tab = "> ", trail = "-", nbsp = "+" }

-- Set up undo history
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"

-- Set up a custom leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Speed up Neovim a bit
vim.opt.updatetime = 250
vim.opt.timeoutlen = 500

-- remove cmd line at bottom
vim.opt.cmdheight = 0
