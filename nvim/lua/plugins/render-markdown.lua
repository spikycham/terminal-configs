return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
    opts = {
        heading = {
            enabled = true,
            sign = false,
            position = "inline",
            backgrounds = {
                "",
                "",
                "",
                "",
                "",
                "",
            },
        },
        code = {
            sign = false,
            width = "block",
        },
        bullet = {
            icons = { "-" },
        },
    },
}
