vim.cmd("colorscheme quiet")

-- Colors.
-- local string_green = "#3cb371"
-- local function_blue = "#4169e1"
local string_green = "#006400"
local function_blue = "#3659a6"
local fg_gray = "#cccccc" -- this is actually text color
local bg_black = "#1c1c1c"

-- Set colors I need.
-- vim.cmd("highlight String guifg=#006400")
-- vim.cmd("highlight Function guifg=#006400")
vim.cmd("highlight String guifg=" .. string_green)
vim.cmd("highlight Function guifg=" .. function_blue)

-- Set comment font italic only.
vim.cmd("highlight Comment guifg=#555555 gui=italic")

-- Set all colors to gray.
vim.cmd("highlight Identifier guifg=" .. fg_gray)
vim.cmd("highlight Keyword guifg=" .. fg_gray)
vim.cmd("highlight Type guifg=" .. fg_gray)
vim.cmd("highlight Constant guifg=" .. fg_gray)
vim.cmd("highlight Number guifg=" .. fg_gray)
vim.cmd("highlight Boolean guifg=" .. fg_gray)
vim.cmd("highlight Operator guifg=" .. fg_gray)
vim.cmd("highlight PreProc guifg=" .. fg_gray)
vim.cmd("highlight Special guifg=" .. fg_gray)
vim.cmd("highlight Conditional guifg=" .. fg_gray)
vim.cmd("highlight Repeat guifg=" .. fg_gray)
vim.cmd("highlight Exception guifg=" .. fg_gray)

-- Background.
-- vim.api.nvim_set_hl(0, "Normal", { fg = "#bbbbbb", bg = bg_black })
-- vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#bbbbbb", bg = bg_black })
vim.api.nvim_set_hl(0, "Normal", { fg = "#bbbbbb", bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#bbbbbb", bg = "NONE" })

-- Visual mode selection colors
vim.api.nvim_set_hl(0, "Visual", { bg = fg_gray, fg = bg_black })

-- Completion menu background (popup menu)
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#2c2c2c", fg = fg_gray })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = fg_gray, fg = bg_black })
