local map = vim.keymap.set

-- Menus
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
map("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Mason" })

-- Buffers (b*)
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Buffer: delete" })
map("n", "<leader>bb", "<cmd>b#<cr>", { desc = "Buffer: alternate" })

-- Tabs / workspaces (t*)
map("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "Tab: new" })
map("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Tab: close" })

-- Diagnostics (c*)
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Code: diagnostic" })
map("n", "<leader>cD", function()
  require("telescope.builtin").diagnostics()
end, { desc = "Code: diagnostics" })
