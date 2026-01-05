return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      {
        "<leader>cf",
        function()
          require("conform").format({ lsp_format = "fallback", timeout_ms = 1500 })
        end,
        desc = "Code: format buffer",
      },
    },
    opts = {
      -- no format-on-save by default
      format_on_save = false,
      formatters_by_ft = {
        -- add later
      },
    },
  },
}
