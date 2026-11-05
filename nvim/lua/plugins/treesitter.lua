return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            ensure_installed = {
                -- "c",
                "html",
                "css",
                "javascript",
                "typescript",
                "tsx",
                "json",
                "markdown",
                "markdown_inline",
                "lua",
                "rust",
                "proto",
            },
            highlight = {
                enable = true,
            },
            indent = {
                enable = false,
            },
        },
    },
    {
        "windwp/nvim-ts-autotag",
        opts = {
            opts = {
                enable_close = true,
                enable_rename = true,
            },
        },
    },
}
