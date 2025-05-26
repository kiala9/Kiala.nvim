return{
    {
    "olimorris/codecompanion.nvim",
    lazy = true,
    event = "VeryLazy",
        config = function()
            require("plugins.ai.codecompanion")
            require("which-key").register({
                ["<leader>a"] = { group = "AI" },
            })    
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        keys = {
            { "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", desc = "ToggleChat" },
            { "<leader>aa", "<cmd>CodeCompanionAction<cr>", desc = "ShowActions" },
        },
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        ft={ "markdown", "codecompanion"},
    },
}