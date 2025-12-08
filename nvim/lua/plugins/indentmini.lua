return {
  "nvimdev/indentmini.nvim",
  config = function()
    local opts = {
      exclude = {
        "markdown",
      }
    }
    require("indentmini").setup(opts)
  end,
}
