return {
  "nvim-telescope/telescope.nvim",
  lazy = true,  -- 启用延迟加载
  event = "VeryLazy", 
  config = function(_, opts)
    require("telescope").setup({
      defaults = {
        initial_mode = "normal"
      }
    })
  end,
}