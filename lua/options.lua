local opts = vim.opt

--
vim.wo.number = true
opts.title = true
opts.showcmd = true
opts.laststatus = 2
opts.cmdheight = 1
opts.hlsearch = true
opts.scrolloff = 4
opts.wrap = false
--
opts.smartindent = true
opts.autoindent = true
opts.smarttab = true
opts.expandtab = true
opts.tabstop = 2
opts.shiftwidth = 2
opts.breakindent = true
opts.backspace = { 'indent', 'eol', 'start' }
--
vim.scriptencoding = 'utf-8'
opts.fileencoding = 'utf-8'
opts.encoding = 'utf-8'
--
opts.cursorline = true
opts.background = 'dark'
opts.termguicolors = true
vim.g.srcery_bg_passthrough = 1
vim.cmd[[colorscheme srcery]]
--
opts.clipboard:prepend { 'unnamed', 'unnamedplus' }

