local str_color = "#3cb371"
local func_color = "#4169e1"
local key_color = "#ec9550"
local comment_color = "#81868b"
-- local paren_color = "#bc271a"
local text_color = "#c5c7c5"
local bg_color = "#1e1f20"

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "Comment", { fg = comment_color, italic = true, bold = false })

        vim.api.nvim_set_hl(0, "String", { fg = str_color })
        vim.api.nvim_set_hl(0, "Function", { fg = func_color })

        vim.api.nvim_set_hl(0, "Keyword", { fg = key_color })
        vim.api.nvim_set_hl(0, "PreProc", { fg = key_color })

        -- Cursor
        -- vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#000000", fg = "#000000" })
        vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#ffffff", fg = "#ffffff" })

        -- UI
        vim.api.nvim_set_hl(0, "Normal", { fg = text_color, bg = bg_color })
        vim.api.nvim_set_hl(0, "NormalFloat", { fg = text_color, bg = bg_color })

        -- Match paren
        -- vim.api.nvim_set_hl(0, "MatchParen", {
        --     fg = text_color,
        --     bg = paren_color,
        --     bold = true,
        -- })
    end,
})

-- local key_color = "#8a2be2"
-- local key_color = "#9370db"
-- local key_color = "#7b68ee"
-- local key_color = "#f4a460"
-- local key_color = "#cd5c5c"
-- local key_color = "#db7093"
