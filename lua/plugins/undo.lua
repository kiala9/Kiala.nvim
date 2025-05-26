return {
  -- 可视化撤销树
  "mbbill/undotree",
  config = function()
    vim.keymap.set("n", "<leader><F12>", vim.cmd.UndotreeToggle, { desc = "Toggle Undo Tree" })
  end,
} 