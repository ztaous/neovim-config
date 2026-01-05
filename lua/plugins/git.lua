return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      { "<leader>gh", function() require("gitsigns").preview_hunk() end, desc = "Git: preview hunk" },
      { "<leader>gs", function() require("gitsigns").stage_hunk() end, desc = "Git: stage hunk" },
      { "<leader>gS", function() require("gitsigns").stage_buffer() end, desc = "Git: stage file" },

      {
        "<leader>gH",
        function()
          if vim.fn.confirm("Discard this hunk?", "&Yes\n&No", 2) == 1 then
            require("gitsigns").reset_hunk()
          end
        end,
        desc = "Git: reset hunk (confirm)",
      },
      {
        "<leader>gR",
        function()
          if vim.fn.confirm("Discard ALL changes in this file?", "&Yes\n&No", 2) == 1 then
            require("gitsigns").reset_buffer()
          end
        end,
        desc = "Git: reset file (confirm)",
      },
    },
    opts = {},
  },

  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G", "Gvdiffsplit", "Gdiffsplit", "Gwrite", "Gread", "Gcommit", "Gblame" },
    keys = {
      { "<leader>g.", "<cmd>Git<cr>", desc = "Git: status" },
      { "<leader>gc", "<cmd>Git commit<cr>", desc = "Git: commit" },
      { "<leader>gd", "<cmd>Gvdiffsplit<cr>", desc = "Git: diff" },
      { "<leader>gB", "<cmd>Gblame<cr>", desc = "Git: blame" },
    },
  },
}
