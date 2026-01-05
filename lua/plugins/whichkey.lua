return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
      delay = 1000,

      plugins = {
        marks = false,
        registers = false,
        spelling = { enabled = false },
        presets = {
          operators = false,
          motions = false,
          text_objects = false,
          windows = false,
          nav = false,
          z = false,
          g = false,
        },
      },

      win = {
        row = math.huge,
        col = math.huge,
        width = 28,
        height = { min = 4, max = 18 },
        border = "none",
        padding = { 0, 1 },
        title = false,
      },

      layout = {
        width = { min = 18, max = 28 },
        spacing = 1,
      },

      spec = {
        { "<leader>f", group = "Find" },
        { "<leader>w", group = "Windows" },
        { "<leader>t", group = "Terminal" },
        { "<leader>c", group = "Code" },
        { "<leader>b", group = "Buffers" },
        { "<leader>e", group = "Explorer" },
        { "<leader>L", group = "LSP" },
        { "<leader>g", group = "Git" },
      },
    },
  },
}
