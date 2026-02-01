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
            language_icon = false,
            language_name = false,
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
