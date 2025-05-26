return {
  {
    "lervag/vimtex",
    lazy = false,
    ft = "tex", -- 只在 tex 文件中加载
    config = function()
      vim.g.vimtex_view_method = "sioyek" -- 使用 sioyek 作为 PDF 查看器
      require("which-key").register({
        ["<leader>v"] = { group = "VimTeX" },
      })    
      --vim.g.vimtex_quickfix_mode = 0
    end,
    keys = {
      { "<leader>vC", "<cmd>VimtexCompile<cr>", desc = " Toggle Compile" },
      { "<leader>vc", "<cmd>VimtexCompileSS<cr>", desc = " Single Compile" },
      { "<leader>vs", "<cmd>VimtexStop<cr>", desc = " Stop Compiling" },
      { "<leader>vv", "<cmd>VimtexView<cr>", desc = " View PDF / Forward Search" },

    },
  },
  {
    "let-def/texpresso.vim",
    lazy = false,
    ft = "tex",
    keys = function()
      return {
        { "<leader>v<space>", "<cmd>TeXpresso %<cr>", desc = " Toggle Texpresso" },    
      }
    end,
  }
}