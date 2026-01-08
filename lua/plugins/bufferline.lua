return {
  {
    "akinsho/bufferline.nvim",
    enabled = true,
    version = "*",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        offsets = {
          { filetype = "NvimTree", text = "File Explorer", padding = 0, separator = false },
        },
      },
    },
  },
}

