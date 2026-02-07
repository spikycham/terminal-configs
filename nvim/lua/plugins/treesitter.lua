return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter.configs").setup({
            require("nvim-ts-autotag").setup(),
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
            },
            highlight = {
                enable = true,
            },
            indent = {
                enable = false,
            },
        })
    end,
}
