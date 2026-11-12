return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        require("nvim-treesitter").install({
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
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "c",
                "html",
                "css",
                "javascript",
                "typescript",
                "typescriptreact",
                "json",
                "markdown",
                "lua",
                "rust",
                -- "proto",
            },
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })

        require("nvim-ts-autotag").setup()
    end,
}
