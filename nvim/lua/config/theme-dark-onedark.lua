local fg_color = "#acb2bf"
local bg_color = "#232626"

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

        local comment_color = "#5d6370"
        vim.api.nvim_set_hl(0, "Comment", { fg = comment_color, italic = true, bold = false })

        local str_color = "#98c47a"
        vim.api.nvim_set_hl(0, "String", { fg = str_color })

        local func_color = "#64aeef"
        vim.api.nvim_set_hl(0, "Function", { fg = func_color })
        vim.api.nvim_set_hl(0, "@constructor", { fg = func_color })

        local key_color = "#bb71d2"
        vim.api.nvim_set_hl(0, "Keyword", { fg = key_color })
        vim.api.nvim_set_hl(0, "PreProc", { fg = key_color })

        local fg_diag_color = "#ffffff"
        local diag_color = "#ff0000"
        vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { fg = fg_diag_color, bg = diag_color })
        vim.api.nvim_set_hl(0, "DiagnosticError", { fg = fg_diag_color, bg = diag_color })

        -- Cursor
        vim.api.nvim_set_hl(0, "CursorInsert", { bg = fg_color, fg = fg_color })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#31353f" })

        -- UI
        vim.api.nvim_set_hl(0, "Normal", { fg = fg_color, bg = bg_color })
        vim.api.nvim_set_hl(0, "NormalFloat", { fg = fg_color, bg = bg_color })

        vim.cmd.highlight("IndentLine guifg=#aaaaaa")
        vim.cmd.highlight("IndentLineCurrent guifg=" .. func_color)
    end,
})
