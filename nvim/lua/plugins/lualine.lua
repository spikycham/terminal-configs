return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                -- theme = "16color",
                -- theme = "onedark",
                -- theme = "gruvbox",
                -- theme = "OceanicNext", -- for nordic
                theme = "vscode",
                component_separators = { left = "|", right = "|" },
                section_separators = { left = "", right = "" },
            },
        })
    end,
}
