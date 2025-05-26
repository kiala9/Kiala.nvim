return {
  {
    "keaising/im-select.nvim",
    lazy = true,  -- 启用延迟加载
    event = "VeryLazy", 
    config = function()
      require("im_select").setup({
        default_im_select = 1033,

        default_command = "im-select.exe",
      })
    end,
  },
}
