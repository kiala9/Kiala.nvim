-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- --Breakpoints
-- map("i", ",", ",<C-g>u", opts)
-- map("i", ".", ".<C-g>u", opts)
-- map("i", "!", "!<C-g>u", opts)
-- map("i", "?", "?<C-g>u", opts)

local keymap = vim.keymap.set
local opts = { silent = true }

-- 精细撤销/重做映射
keymap({ "n", "i" }, "<C-z>", "<cmd>earlier 1f<CR>", opts)
keymap({ "n", "i" }, "<C-y>", "<cmd>later 1f<CR>", opts)

-- Ctrl+Delete 强制关闭程序
map("n", "<C-delete>", "<C-z>", opts)
