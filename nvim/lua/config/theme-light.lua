local fg_color = "black"
local bg_color = "white"
-- local fg_color = "white"
-- local bg_color = "black"

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

        local comment_color = "gray"
        vim.api.nvim_set_hl(0, "Comment", { fg = comment_color, italic = true, bold = false })

        local str_color = "green"
        vim.api.nvim_set_hl(0, "String", { fg = str_color })

        local func_color = "blue"
        vim.api.nvim_set_hl(0, "Function", { fg = func_color })
        vim.api.nvim_set_hl(0, "@constructor", { fg = func_color })

        local key_color = "purple"
        vim.api.nvim_set_hl(0, "Keyword", { fg = key_color })
        vim.api.nvim_set_hl(0, "PreProc", { fg = key_color })

        local fg_diag_color = "white"
        local diag_color = "red"
        vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { fg = fg_diag_color, bg = diag_color })
        vim.api.nvim_set_hl(0, "DiagnosticError", { fg = fg_diag_color, bg = diag_color })

        -- Visual selected lines color.
        vim.api.nvim_set_hl(0, "Visual", { fg = bg_color, bg = str_color })

        -- Cursor
        vim.api.nvim_set_hl(0, "CursorInsert", { bg = fg_color, fg = fg_color })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#e2e2e2" })

        -- UI
        vim.api.nvim_set_hl(0, "Normal", { fg = fg_color, bg = bg_color })
        vim.api.nvim_set_hl(0, "NormalFloat", { fg = fg_color, bg = bg_color })

        vim.cmd.highlight("IndentLine guifg=" .. comment_color)
        vim.cmd.highlight("IndentLineCurrent guifg=" .. func_color)
    end,
})
