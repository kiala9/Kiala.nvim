-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.undofile = true -- 启用持久化撤销
opt.undodir = vim.fn.stdpath("data") .. "/undo" -- 设置撤销文件目录
opt.undolevels = 10000 -- 最大撤销级别
opt.undoreload = 10000 -- 重新加载时保留的撤销级别
opt.formatoptions:remove({ "c", "r", "o" }) -- 减少自动格式化对撤销的影响
vim.opt.relativenumber = false -- 禁用相对行号

