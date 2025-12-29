return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      hijack_netrw = true,
      view = { width = 34 },
      renderer = { group_empty = true },
      filters = { dotfiles = false },
    },
  },
  { "nvim-tree/nvim-web-devicons" },
}
