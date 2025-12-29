require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "query",
  },
  highlight = { enable = true },
  indent = { enable = true },
})
