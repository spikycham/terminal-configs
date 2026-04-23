require("config.options")
require("config.lazy")
require("config.theme")

-- Built-ins
-- vim.cmd("colorscheme slate")
-- vim.cmd("colorscheme habamax")
-- vim.cmd("colorscheme lunaperche")
vim.cmd("colorscheme quiet")

-- Plugins
-- vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme kanagawa")
-- vim.cmd("colorscheme onedark")
-- vim.cmd("colorscheme nordic")
-- vim.cmd("colorscheme github_dark")
-- vim.cmd("colorscheme catppuccin")
-- vim.cmd("colorscheme vscode")
-- vim.cmd("colorscheme terafox")
-- vim.cmd("colorscheme monokai-pro")

-- Set comment to italic and be default color
-- local function mod_hl(group, attrs)
--     local current_hl = vim.api.nvim_get_hl_by_name(group, true)
--     if current_hl then
--         local new_hl = vim.tbl_deep_extend("force", current_hl, attrs)
--         vim.api.nvim_set_hl(0, group, new_hl)
--     end
-- end
-- mod_hl("Comment", { italic = true, bold = false })

-- Indent mini color.
-- vim.cmd.highlight("IndentLine guifg=#aaaaaa")
-- vim.cmd.highlight("IndentLineCurrent guifg=#4169e1")

-- Cursor blink.
vim.o.guicursor = table.concat({
    "n-v-c:block-Cursor",
    "i-ci:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
    "r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100",
}, ",")
