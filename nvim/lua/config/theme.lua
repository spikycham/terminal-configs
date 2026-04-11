local string_green = "#3cb371"
local function_blue = "#4169e1"
local key_red = "#8a2be2"

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "Comment", { fg = "#999999", italic = true, bold = false })

        vim.api.nvim_set_hl(0, "String", { fg = string_green })
        vim.api.nvim_set_hl(0, "Function", { fg = function_blue })

        vim.api.nvim_set_hl(0, "Keyword", { fg = key_red })
        vim.api.nvim_set_hl(0, "PreProc", { fg = key_red })

        -- Cursor
        vim.opt.guicursor = "n-v-c:block,i:ver25-CursorInsert"
        vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#000000", fg = "#000000" })

        -- UI
        vim.api.nvim_set_hl(0, "Normal", { fg = "#bbbbbb", bg = "NONE" })
        vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#bbbbbb", bg = "NONE" })
    end,
})
