return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        offsets = {
          { filetype = "NvimTree", text = "", padding = 0, separator = true },
        },
      },
    },
  },
}

