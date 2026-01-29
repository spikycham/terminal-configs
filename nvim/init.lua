require("config.options")
require("config.lazy")

-- Built-ins
-- vim.cmd("colorscheme slate")
-- vim.cmd("colorscheme habamax")
-- vim.cmd("colorscheme lunaperche")

-- Plugins
-- vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme nordic")
-- vim.cmd("colorscheme github_dark_default")
-- vim.cmd("colorscheme catppuccin")
vim.cmd("colorscheme vscode")
-- vim.cmd("colorscheme terafox")

-- Set comment to italic and be default color
local function mod_hl(group, attrs)
    local current_hl = vim.api.nvim_get_hl_by_name(group, true)
    if current_hl then
        local new_hl = vim.tbl_deep_extend("force", current_hl, attrs)
        vim.api.nvim_set_hl(0, group, new_hl)
    end
end
mod_hl("Comment", { italic = true })

-- Indent mini color
vim.cmd.highlight("IndentLine guifg=#444444")
vim.cmd.highlight("IndentLineCurrent guifg=#61d23f")
