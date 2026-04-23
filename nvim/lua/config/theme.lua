local string_green = "#3cb371"
local function_blue = "#4169e1"
local key_purple = "#daa520"
local comment_color = "#777777"

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "Comment", { fg = comment_color, italic = true, bold = false })

        vim.api.nvim_set_hl(0, "String", { fg = string_green })
        vim.api.nvim_set_hl(0, "Function", { fg = function_blue })

        vim.api.nvim_set_hl(0, "Keyword", { fg = key_purple })
        vim.api.nvim_set_hl(0, "PreProc", { fg = key_purple })

        -- Cursor
        vim.opt.guicursor = "n-v-c:block,i:ver25-CursorInsert"
        -- vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#000000", fg = "#000000" })
        vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#ffffff", fg = "#ffffff" })

        -- UI
        -- vim.api.nvim_set_hl(0, "Normal", { fg = "#bbbbbb", bg = "NONE" })
        -- vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#bbbbbb", bg = "NONE" })
    end,
})

-- Indent mini color.
vim.cmd.highlight("IndentLine guifg=#aaaaaa")
vim.cmd.highlight("IndentLineCurrent guifg=#4169e1")

-- local key_purple = "#8a2be2"
-- local key_purple = "#9370db"
-- local key_purple = "#7b68ee"
-- local key_purple = "#f4a460"
-- local key_purple = "#cd5c5c"
-- local key_purple = "#db7093"
