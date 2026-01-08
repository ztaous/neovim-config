return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<leader>T", "<cmd>ToggleTerm direction=float<cr>", desc = "Terminal" },
    },
    opts = {
      direction = "float",
      float_opts = { border = "rounded" },
    },
  },
}

