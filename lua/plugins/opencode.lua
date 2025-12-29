return {
  {
    "NickvanDyke/opencode.nvim",
    dependencies = {
      -- Recommended for `ask()` and `select()`.
      -- Required for `snacks` provider.
      { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
    },
    config = function()
      vim.g.opencode_opts = {}

      -- Required for reload behavior when opencode edits files.
      vim.o.autoread = true

      -- Leader-friendly keymaps (won't override core Vim defaults)
      vim.keymap.set({ "n", "x" }, "<leader>oa", function()
        require("opencode").ask("@this: ", { submit = true })
      end, { desc = "opencode: ask about this (submit)" })

      vim.keymap.set({ "n", "x" }, "<leader>oo", function()
        require("opencode").select()
      end, { desc = "opencode: actions" })

      vim.keymap.set({ "n", "t" }, "<leader>ot", function()
        require("opencode").toggle()
      end, { desc = "opencode: toggle" })
    end,
  },
}

