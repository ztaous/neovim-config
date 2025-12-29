return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    -- Lazy-load the explorer only when you use it
    cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFile", "NvimTreeCollapse" },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer" },
    },

    opts = {
      hijack_netrw = true,
      view = { width = 34 },
      renderer = { group_empty = true },
      filters = { dotfiles = false },

      -- Keep the explorer rooted correctly as you move between files/projects
      sync_root_with_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true,
      },
    },
  },

  -- Keep devicons as a dependency only
  -- { "nvim-tree/nvim-web-devicons" },
}

