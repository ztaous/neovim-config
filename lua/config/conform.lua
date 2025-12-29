require("conform").setup({
  format_on_save = function(bufnr)
    -- Use LSP formatting if the server supports it, otherwise use formatters.
    return { timeout_ms = 1500, lsp_format = "fallback", bufnr = bufnr }
  end,

  formatters_by_ft = {
    -- Add formatters per filetype later, examples:
    -- lua = { "stylua" },
    -- python = { "ruff_format" },
    -- javascript = { "prettier" },
    -- typescript = { "prettier" },
    -- c = { "clang_format" },
  },
})

require("conform").setup({
  format_on_save = false,
  formatters_by_ft = {},
})
