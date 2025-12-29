local ts = require("nvim-treesitter")

ts.setup({})

-- install parsers (add/remove)
ts.install({
  "lua", "c", "cpp", "python",
  "javascript", "typescript", "html", "css",
  "java", "vhdl", "asm",
})

-- enable treesitter highlighting (Neovim provides highlighting, must start it) :contentReference[oaicite:2]{index=2}
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})

