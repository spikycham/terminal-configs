return {
  -- PERF: need optimizing
  -- HACK: code is a bit weird
  -- TODO: todo
  -- NOTE: note
  -- FIX: fix bug
  -- WARNING: dangerous
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    signs = false,
    keywords = {
      PERF = {color= "#7C3AED"},
      HACK = {color= "#FF00FF"},
      TODO = {color= "#2563EB"},
      NOTE = {color= "#10B981"},
      FIX = {color= "#DC2626"},
      WARNING = {color= "#FBBF24"},
      -- TEST = {color= "#FF00FF"}
    },
  }
}
