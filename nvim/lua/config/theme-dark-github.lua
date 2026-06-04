local fg_color = "#e4e9ef"
local bg_color = "#31363d"

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        -- Reset all colors to fg_color.
        local base_groups = {
            "Identifier",
            "Variable",
            "Constant",
            "Type",
            "Statement",
            "Operator",
            "Delimiter",
            "PreProc",
            "Special",
            "@variable",
            "@parameter",
            "@punctuation",
            "@property",
            "@field",
        }
        for _, group in ipairs(base_groups) do
            vim.api.nvim_set_hl(0, group, { fg = fg_color })
        end

        local comment_color = "#8a919a"
        vim.api.nvim_set_hl(0, "Comment", { fg = comment_color, italic = true, bold = false })

        local str_color = "#81baea"
        vim.api.nvim_set_hl(0, "String", { fg = str_color })

        local func_color = "#e29f60"
        vim.api.nvim_set_hl(0, "Function", { fg = func_color })
        vim.api.nvim_set_hl(0, "@constructor", { fg = func_color })

        local key_color = "#e77f74"
        vim.api.nvim_set_hl(0, "Keyword", { fg = key_color })
        vim.api.nvim_set_hl(0, "PreProc", { fg = key_color })

        -- local brac_color = "#fabd2f"
        -- vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = brac_color })
        -- vim.api.nvim_set_hl(0, "@table.bracket", { fg = brac_color })

        local fg_diag_color = "#ffffff"
        local diag_color = "#ff0000"
        vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { fg = fg_diag_color, bg = diag_color })
        vim.api.nvim_set_hl(0, "DiagnosticError", { fg = fg_diag_color, bg = diag_color })

        -- Cursor
        vim.api.nvim_set_hl(0, "CursorInsert", { bg = fg_color, fg = fg_color })

        -- UI
        vim.api.nvim_set_hl(0, "Normal", { fg = fg_color, bg = bg_color })
        vim.api.nvim_set_hl(0, "NormalFloat", { fg = fg_color, bg = bg_color })

        vim.cmd.highlight("IndentLine guifg=#aaaaaa")
        vim.cmd.highlight("IndentLineCurrent guifg=" .. key_color)
    end,
})
