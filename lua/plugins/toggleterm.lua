return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Terminal (float)" },
      { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Terminal (horizontal)" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Terminal (vertical)" },
      { "<leader>ts", "<cmd>TermSelect<cr>", desc = "Terminal: select" },
    },
    opts = {
      open_mapping = [[<leader>tt]], -- one key: toggle float terminal
      direction = "float",
      float_opts = { border = "rounded" },
    },
  },
}

