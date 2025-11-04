return {
  "mhartington/formatter.nvim",
  config = function()
    local formatter = require("formatter")

    local prettier = function()
      return {
        exe = "prettier",
        args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--tab-width", "4", "--use-tabs", "false" },
        stdin = true,
      }
    end

    formatter.setup({
      filetype = {
        javascript = {
          prettier
        },
        javascriptreact = {
          prettier
        },
        typescript = {
          prettier
        },
        typescriptreact = {
          prettier
        },
        html = {
          prettier
        },
        css = {
          prettier
        },
        -- not for work
        rust = {
          function ()
            return {
              exe = "rustfmt",
              args = { "--emit=stdout" },
              stdin = true,
            }
          end
        }
      }
    })

    vim.api.nvim_create_autocmd("BufWritePost", {
      pattern = {
        "*.ts",
        "*.tsx",
        "*.js",
        "*.jsx",
        "*.html",
        "*.css",
        -- not for work
        "*.rs"
      },
      command = "FormatWrite"
    })
  end
}
