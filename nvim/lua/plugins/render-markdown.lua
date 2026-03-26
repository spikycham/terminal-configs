return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
    opts = {
        heading = {
            enabled = false,
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
        -- link = {
        --     enabled = false,
        -- },
        code = {
            -- enabled = false,

            sign = false,
            language_icon = true,
            language_name = true,

            language_pad = 2,
            left_pad = 2,

            border = "thick",
        },
        bullet = {
            icons = { "-" },
        },
        checkbox = {
            unchecked = {
                icon = "[ ]",
            },
            checked = {
                icon = "[x]",
            },
            custom = {
                -- →
                -- ⇒
                -- ⮕
                -- ➔
                todo = { raw = "[-]", rendered = "[-]", highlight = "RenderMarkdownTodo" },
            },
        },
    },
}
