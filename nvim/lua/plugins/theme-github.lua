return {
    "projekt0n/github-nvim-theme",
    config = function()
        require("github-theme").setup({
            options = {
                inverse = {
                    match_paren = true,
                },
            },
        })
    end,
}
