return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
	keys = {
	  { "<leader>gh", function() require("gitsigns").preview_hunk() end, desc = "Git hunk preview" },
	  { "<leader>gs", function() require("gitsigns").stage_hunk() end, desc = "Git stage hunk" },
	  { "<leader>gS", function() require("gitsigns").stage_buffer() end, desc = "Git stage file" },
	  { "<leader>gr", function() require("gitsigns").reset_hunk() end, desc = "Git reset hunk" },
	},
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
