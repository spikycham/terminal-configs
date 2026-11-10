return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    branch = "master",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
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
                -- "proto",
            },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        })

        require("nvim-ts-autotag").setup()
    end,
}
