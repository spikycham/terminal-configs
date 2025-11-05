return {
  "mhartington/formatter.nvim",
  config = function()
    local formatter = require("formatter")

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
        },
        stdin = true,
      }
    end

    formatter.setup({
      filetype = {
        javascript = {
          prettier,
        },
        javascriptreact = {
          prettier,
        },
        typescript = {
          prettier,
        },
        typescriptreact = {
          prettier,
        },
        html = {
          prettier,
        },
        css = {
          prettier,
        },
        json = {
          prettier,
        },
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
                "2",
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
        -- not for work
        "*.rs",
        "*.lua",
      },
      command = "FormatWrite",
    })
  end,
}
