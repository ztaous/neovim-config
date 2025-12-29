return {
    {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function() require("config.treesitter") end,
    },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("config.telescope") end,
  },

  { "numToStr/Comment.nvim", opts = {} },
  { "windwp/nvim-autopairs", opts = {} },
  { "kylechui/nvim-surround", opts = {} },
}
