-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- 在插入模式下自动创建撤销点
vim.api.nvim_create_autocmd("InsertEnter", {
  group = augroup("undo_breakpoints"),
  callback = function()
    vim.keymap.set("i", "<CR>", "<CR><C-g>u", { buffer = true, silent = true })
    vim.keymap.set("i", "!", "!<C-g>u", { buffer = true, silent = true })
    vim.keymap.set("i", "?", "?<C-g>u", { buffer = true, silent = true })
    vim.keymap.set("i", ".", ".<C-g>u", { buffer = true, silent = true })
    vim.keymap.set("i", ",", ",<C-g>u", { buffer = true, silent = true })
  end,
})

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "TelescopePrompt",
--   callback = function()
--     vim.cmd("stopinsert()")
--   end,
-- })


