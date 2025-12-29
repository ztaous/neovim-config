return {
  { "mason-org/mason.nvim", build = ":MasonUpdate" },
  { "mason-org/mason-lspconfig.nvim" },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-org/mason.nvim", "mason-org/mason-lspconfig.nvim" },
    config = function()
      require("config.lsp")
    end,
  },
}
