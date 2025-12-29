return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function() require("config.treesitter") end,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    -- Lazy-load when you use Telescope
    cmd = "Telescope",
    keys = {
      { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find: files" },
      { "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Find: grep" },
      { "<leader>fr", function() require("telescope.builtin").oldfiles() end, desc = "Find: recent" },
      { "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Find: help" },
      { "<leader>bb", function() require("telescope.builtin").buffers({ initial_mode = "normal" }) end, desc = "Buffers: list" },
    },
    config = function() require("config.telescope") end,
  },

  { "numToStr/Comment.nvim", event = "VeryLazy", opts = {} },
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
  { "kylechui/nvim-surround", event = "VeryLazy", opts = {} },
}

