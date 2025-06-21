-- Basic settings
vim.o.number = true       -- Show line numbers
vim.o.relativenumber = true -- Relative line numbers
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

-- Key mapping example
vim.keymap.set('n', '<Space>', '<Nop>', { silent = true, noremap = true })
vim.g.mapleader = ' '

-- Import and execute lazy plugin manager and its settings defined in 'config/lazy.lua'
require("config.lazy")
