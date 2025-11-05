return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  -- or                              , branch = '0.1.x',
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local status_ok, telescope = pcall(require, "telescope")
    if not status_ok then
      return
    end

    telescope.setup({})

    local opts = { noremap = true, silent = true }

    vim.api.nvim_set_keymap("n", "<s-f>", "<cmd>Telescope find_files<cr>", opts)
    -- vim.api.nvim_set_keymap("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", opts)
    -- vim.api.nvim_set_keymap("n", "<leader>tb", "<cmd>Telescope buffers<cr>", opts)
    -- vim.api.nvim_set_keymap("n", "<leader>th", "<cmd>Telescope help_tags<cr>", opts)
    -- vim.api.nvim_set_keymap("n", "<leader>to", "<cmd>Telescope oldfiles<cr>", opts)
  end,
}
