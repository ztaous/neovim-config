return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      { "<leader>gh", function() require("gitsigns").preview_hunk() end, desc = "Git: preview hunk" },
      { "<leader>gs", function() require("gitsigns").stage_buffer() end, desc = "Git: stage file" },
      {
        "<leader>gH",
        function()
          local ok = vim.fn.confirm("Discard this hunk?", "&Yes\n&No", 2)
          if ok == 1 then require("gitsigns").reset_hunk() end
        end,
        desc = "Git: reset hunk (confirm)",
      },
      {
        "<leader>gR",
        function()
          local ok = vim.fn.confirm("Discard ALL changes in this file?", "&Yes\n&No", 2)
          if ok == 1 then require("gitsigns").reset_buffer() end
        end,
        desc = "Git: reset file (confirm)",
      },
    },
    opts = {},
  },
}
