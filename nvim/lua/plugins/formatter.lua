return {
  "mhartington/formatter.nvim",
  config = function()
    local formatter = require("formatter")

    local util = require("formatter.util")
    local prettier = function()
      return {
        exe = "prettier",
        args = {
          "--stdin-filepath",
          vim.api.nvim_buf_get_name(0),
          "--tab-width",
          -- Modify here to change the indent width
          "4",
          "--use-tabs",
          "false",
          "--bracket-same-line",
          "true",
          "--print-width",
          "100",
        },
        stdin = true,
      }
    end

    local prettier_vue = function()
      return {
        exe = "prettier",
        args = {
          "--stdin-filepath",
          util.escape_path(util.get_current_buffer_file_path()),
          vim.api.nvim_buf_get_name(0),
          "--tab-width",
          -- Modify here to change the indent width
          "4",
          "--use-tabs",
          "false",
          "--bracket-same-line",
          "true",
        },
        stdin = true,
      }
    end
    formatter.setup({
      filetype = {
        javascript = { prettier },
        javascriptreact = { prettier },
        typescript = { prettier },
        typescriptreact = { prettier },
        html = { prettier },
        css = { prettier },
        json = { prettier },
        -- vue
        vue = { prettier_vue },
        -- not for work
        rust = {
          function()
            return {
              exe = "rustfmt",
              args = { "--emit=stdout" },
              stdin = true,
            }
          end,
        },
        lua = {
          function()
            return {
              exe = "stylua",
              args = {
                "--search-parent-directories",
                "--stdin-filepath",
                vim.api.nvim_buf_get_name(0),
                "-",
                "--indent-width",
                "4",
                "--indent-type",
                "Spaces",
              },
              stdin = true,
            }
          end,
        },
      },
    })

    vim.api.nvim_create_autocmd("BufWritePost", {
      pattern = {
        "*.ts",
        "*.tsx",
        "*.js",
        "*.jsx",
        "*.html",
        "*.css",
        "*.json",
        "*.vue",
        -- not for work
        "*.rs",
        "*.lua",
      },
      command = "FormatWrite",
    })
  end,
}
