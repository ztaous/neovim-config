return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- load early
    lazy = false,
    config = function()
      vim.o.termguicolors = true
      vim.o.background = "dark"
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}

