return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    keys = {
      {
        "<leader>ff",
        function()
          local root = require("config.root").get(0)
          require("telescope.builtin").find_files({ cwd = root })
        end,
        desc = "Find: files",
      },
      {
        "<leader>fg",
        function()
          local root = require("config.root").get(0)
          require("telescope.builtin").live_grep({ cwd = root })
        end,
        desc = "Find: grep",
      },

      -- Global / editor-scoped
      { "<leader>fr", function() require("telescope.builtin").oldfiles() end, desc = "Find: recent" },
      { "<leader>bb", function() require("telescope.builtin").buffers() end, desc = "Buffers: list" },

      -- LSP pickers
      { "<leader>Ls", function() require("telescope.builtin").lsp_document_symbols() end, desc = "LSP: document symbols" },
      { "<leader>LS", function() require("telescope.builtin").lsp_workspace_symbols() end, desc = "LSP: workspace symbols" },
    },
    config = function()
      local actions = require("telescope.actions")
      require("telescope").setup({
        defaults = {
          initial_mode = "insert",
          mappings = { n = { ["d"] = actions.delete_buffer } },
        },
        pickers = {
          buffers = {
            initial_mode = "normal",
          },
        },
      })
    end
  },
}
