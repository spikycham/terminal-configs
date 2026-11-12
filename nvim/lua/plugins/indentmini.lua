return {
    "nvimdev/indentmini.nvim",
    config = function()
        local opts = {
            exclude = {
                "markdown",
            },
            char = "┆",
            -- char = "╎",
            -- char = "│",
        }
        require("indentmini").setup(opts)
    end,
}
