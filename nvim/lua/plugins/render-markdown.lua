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
            -- enabled = false,
            sign = false,
            language_icon = true,
            language_name = true,
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
                todo = { raw = "[-]", rendered = "[-]", highlight = "RenderMarkdownTodo", scope_highlight = nil },
            },
        },
    },
}
