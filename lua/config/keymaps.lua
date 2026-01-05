local map = vim.keymap.set

local function safe_cmd(cmd)
  local ft = vim.bo.filetype
  local bt = vim.bo.buftype

  -- if we're in a sidebar or special buffer, move to a normal window first
  if ft == "NvimTree" or ft == "toggleterm" or bt ~= "" then
    vim.cmd("wincmd p")
    -- if that still didn't land in a normal buffer, open a new tab
    if vim.bo.filetype == "NvimTree" or vim.bo.buftype ~= "" then
      vim.cmd("tabnew")
    end
  end

  vim.cmd(cmd)
end

-- Home + Lazy (safe)
map("n", "<leader>h", function() safe_cmd("Alpha") end, { desc = "Home" })
map("n", "<leader>l", function() safe_cmd("Lazy") end, { desc = "Lazy" })
map("n", "<leader>m", function() safe_cmd("Mason") end, { desc = "Mason" })


-- Basic
map("n", "<leader>w", "<cmd>write<cr>", { desc = "Save" })
map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })

-- Better window movement
map("n", "<C-h>", "<C-w>h", { desc = "Go left" })
map("n", "<C-j>", "<C-w>j", { desc = "Go down" })
map("n", "<C-k>", "<C-w>k", { desc = "Go up" })
map("n", "<C-l>", "<C-w>l", { desc = "Go right" })

-- Window splits
map("n", "<leader>wh", "<cmd>split<cr>", { desc = "Window: split" })
map("n", "<leader>wv", "<cmd>vsplit<cr>", { desc = "Window: vsplit" })
map("n", "<leader>wc", "<cmd>close<cr>", { desc = "Window: close" })

-- Tab pages (workspaces)
map("n", "<leader>wt", "<cmd>tabnew<cr>", { desc = "Window: new tab page" })
map("n", "<leader>w]", "<cmd>tabnext<cr>", { desc = "Window: next tab page" })
map("n", "<leader>w[", "<cmd>tabprev<cr>", { desc = "Window: prev tab page" })
map("n", "<leader>wx", "<cmd>tabclose<cr>", { desc = "Window: close tab page" })
