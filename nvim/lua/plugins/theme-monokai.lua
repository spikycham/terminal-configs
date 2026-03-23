return {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("monokai-pro").setup({
            -- filter = "octagon",
            override = function()
                return {
                    Normal = { bg = "NONE" },
                    NormalNC = { bg = "NONE" },
                    SignColumn = { bg = "NONE" },
                    VertSplit = { bg = "NONE" },

                    MiniIconsFile = { fg = nil },
                    MiniIconsFolder = { fg = nil },
                }
            end,
            override_palette = function()
                -- local base = {
                --     dark = "#19181a", -- darker background
                --     black = "#221f22", -- background
                --     red = "#ff6188", -- accent1
                --     green = "#a9dc76", -- accent4
                --     yellow = "#ffd866", -- accent3
                --     blue = "#fc9867", -- accent2
                --     magenta = "#ab9df2", -- accent6
                --     cyan = "#78dce8", -- accent5
                --     white = "#fcfcfa", -- text
                --     dimmed1 = "#c1c0c0",
                --     dimmed2 = "#939293",
                --     dimmed3 = "#727072",
                --     dimmed4 = "#5b595c",
                --     dimmed5 = "#403e41",
                -- }

                -- dark2 = "#101014",
                -- dark1 = "#16161E",
                -- background = "#1A1B26",
                -- text = "#C0CAF5",
                -- accent1 = "#f7768e",
                -- accent2 = "#7aa2f7",
                -- accent3 = "#e0af68",
                -- accent4 = "#9ece6a",
                -- accent5 = "#0DB9D7",
                -- accent6 = "#9d7cd8",
                -- dimmed1 = "#737aa2",
                -- dimmed2 = "#787c99",
                -- dimmed3 = "#363b54",
                -- dimmed4 = "#363b54",
                -- dimmed5 = "#16161e",

                return {
                    text = "#ffffff",
                    accent1 = "#ffffff", -- key word
                    accent3 = "#9ece6a", -- string
                    accent4 = "#fc9867", -- function
                    accent5 = "#737aa2",
                    accent6 = "#ffffff", -- number / boolean
                }
            end,
        })
    end,
}
