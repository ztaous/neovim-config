local map = vim.keymap.set

-- Menus
map("n", "<leader>h", "<cmd>Alpha<cr>", { desc = "Home" })
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
map("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Mason" })

-- Buffers (b*)
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Buffer: delete" })
map("n", "<leader>b]", "<cmd>bnext<cr>", { desc = "Buffer: next" })
map("n", "<leader>b[", "<cmd>bprevious<cr>", { desc = "Buffer: prev" })
map("n", "<leader>bb", "<cmd>b#<cr>", { desc = "Buffer: alternate" })

-- Tabs / workspaces (t*)
map("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "Tab: new" })
map("n", "<leader>t]", "<cmd>tabnext<cr>", { desc = "Tab: next" })
map("n", "<leader>t[", "<cmd>tabprevious<cr>", { desc = "Tab: prev" })
map("n", "<leader>tq", "<cmd>tabclose<cr>", { desc = "Tab: close" })

