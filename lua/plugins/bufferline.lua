return {
    "akinsho/bufferline.nvim",
    opts = function()
        local bufferline = require("bufferline")
        return {
            options = {
                separator_style = "auto", -- 可以根据需要修改为其他选项
                always_show_bufferline = true,
            },
            highlights = {
                buffer_selected = {
                    fg = '#FFFFFF',
                    bg = 'none',
                    italic = false,
                },
                -- indicator_selected = {
                --     fg = "none",
                --     bg = "None",
                -- },
                -- separator = {
                --     fg = "#77b8a",  -- 分隔符前景色（通常与背景一致）
                --     bg = "#77b8a",  -- 分隔符背景色
                -- },
                -- fill = {
                --     fg = "#C6D0F5",  -- 选中分隔符前景色
                --     bg = "#C6D0F5",  -- 选中分隔符背景色
                -- },
                -- separator_selected = {
                --     fg = "none",  -- 选中分隔符前景色
                --     bg = "none",  -- 选中分隔符背景色
                -- },
            },
            
        }
    end,
}