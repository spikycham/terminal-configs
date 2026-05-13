local fg_color = "#c5c7c5"
local bg_color = "#1e2021"

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        local comment_color = "#81868b"
        vim.api.nvim_set_hl(0, "Comment", { fg = comment_color, italic = true, bold = false })

        local str_color = "#3cb371"
        -- local str_color = "#b9bb47"
        vim.api.nvim_set_hl(0, "String", { fg = str_color })

        -- local func_color = "#3465ed"
        local func_color = bg_color
        vim.api.nvim_set_hl(0, "Function", { fg = func_color })

        -- local key_color = "#ec9550"
        local key_color = "#3465ed"
        vim.api.nvim_set_hl(0, "Keyword", { fg = key_color })
        vim.api.nvim_set_hl(0, "PreProc", { fg = key_color })

        -- local brac_color = "#fabd2f"
        -- vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = brac_color })
        -- vim.api.nvim_set_hl(0, "@table.bracket", { fg = brac_color })
        -- vim.api.nvim_set_hl(0, "@constructor", { fg = brac_color })

        local fg_diag_color = "#ffffff"
        local diag_color = "#ff0000"
        vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { fg = fg_diag_color, bg = diag_color })
        vim.api.nvim_set_hl(0, "DiagnosticError", { fg = fg_diag_color, bg = diag_color })

        -- Cursor
        vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#000000", fg = "#000000" })
        -- vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#ffffff", fg = "#ffffff" })

        -- UI
        -- vim.api.nvim_set_hl(0, "Normal", { fg = fg_color, bg = bg_color })
        -- vim.api.nvim_set_hl(0, "NormalFloat", { fg = fg_color, bg = bg_color })
        -- Light
        vim.api.nvim_set_hl(0, "Normal", { fg = bg_color, bg = "#ffffff" })

        -- Match paren
        -- local paren_color = "#bc271a"
        -- vim.api.nvim_set_hl(0, "MatchParen", {
        --     fg = fg_color,
        --     bg = paren_color,
        --     bold = true,
        -- })

        vim.cmd.highlight("IndentLine guifg=#aaaaaa")
        vim.cmd.highlight("IndentLineCurrent guifg=" .. key_color)
    end,
})
