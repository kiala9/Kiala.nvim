local code = require("codecompanion")

if code then
    vim.env.DEEPSEEK_KEY = ""
    code.setup(
        {
            adapters = {
                opts = {
                -- show_defaults 会导致copilot不能正常工作
                show_defaults = true,
                },

                deepseekv3 = function()
                return require("codecompanion.adapters").extend("deepseek", {
                    name = "deepseek",
                    env = {
                    api_key = function()
                        return os.getenv("DEEPSEEK_KEY")
                    end,
                    },
                    schema = {
                        model = {
                            default = "deepseek-chat",
                        },
                    },
                    })
                end,

                deepseekr1 = function()
                return require("codecompanion.adapters").extend("deepseek", {
                    name = "deepseek",
                    env = {
                    api_key = function()
                        return os.getenv("DEEPSEEK_KEY")
                    end,
                    },
                    schema = {
                        model = {
                            default = "deepseek-reasoner",
                            choices = {
                                ["deepseek-reasoner"] = { opts = { can_reason = true }},
                            },
                        },
                    },
                    })
                end,

            },

            strategies = {
                chat = { adapter = "deepseekr1" },
                inline = { adapter = "deepseekv3" },
            },

            opts = {
                language = "Chinese",
            },

            prompt_library = {
                ["DeepSeek Explain"] = require("plugins.ai.prompts.deepseek-explain"),
            },

        }
    )
end


