require("config.options")
require("config.lazy")

-- vim.cmd("colorscheme slate")
-- vim.cmd("colorscheme habamax")
-- vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme nordic")
-- vim.cmd("colorscheme lunaperche")
vim.cmd("colorscheme catppuccin")

-- Set comment to italic and be default color
local function mod_hl(group, attrs)
  local current_hl = vim.api.nvim_get_hl_by_name(group, true)
  if current_hl then
    local new_hl = vim.tbl_deep_extend("force", current_hl, attrs)
    vim.api.nvim_set_hl(0, group, new_hl)
  end
end
-- mod_hl("Comment", { italic = true })

-- Indent mini color
vim.cmd.highlight("IndentLine guifg=#333333")
vim.cmd.highlight("IndentLineCurrent guifg=#5fafff")
