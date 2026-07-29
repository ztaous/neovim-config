return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      win = {
        width = { min = 20, max = 50 },
        height = { min = 2, max = 10 },
        col = math.huge,
        row = math.huge,
        padding = { 0, 1 },
      },
      layout = {
        width = { min = 16, max = 24 },
        spacing = 2,
      },
    },
  },
}
