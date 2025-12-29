local telescope = require("telescope")
local builtin = require("telescope.builtin")
local map = vim.keymap.set

local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

telescope.setup({
  defaults = {
    initial_mode = "normal",
    mappings = {
      n = {
        ["d"] = actions.delete_buffer,
      },
    },
  },
})

-- Find / Search
map("n", "<leader>ff", builtin.find_files, { desc = "Find: files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Find: grep" })
map("n", "<leader>fr", builtin.oldfiles, { desc = "Find: recent" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Find: help" })

-- Buffers
map("n", "<leader>bb", builtin.buffers, { desc = "Buffers: list" })

-- LSP
map("n", "<leader>Ls", builtin.lsp_document_symbols, { desc = "LSP: document symbols" })
map("n", "<leader>LS", builtin.lsp_workspace_symbols, { desc = "LSP: workspace symbols" })
