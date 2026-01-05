return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
        "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
        "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
        "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
        "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
      }

      dashboard.section.buttons.opts.spacing = 0

      local primary = {
        dashboard.button("r", "󰋚  Recent", "<cmd>Telescope oldfiles<cr>"),
        dashboard.button("f", "󰱼  Files", "<cmd>Telescope find_files<cr>"),
      }

      local system = {
        dashboard.button("l", "󰒲  Plugins", "<cmd>Lazy<cr>"),
        dashboard.button("q", "󰗼  Quit", "<cmd>qa<cr>"),
      }

      dashboard.opts.layout = {
        { type = "padding", val = 2 },
        dashboard.section.header,
        { type = "padding", val = 1 },
        { type = "group", val = primary },
        { type = "padding", val = 1 },
        { type = "group", val = system },
      }

      alpha.setup(dashboard.opts)
    end,
  },
}
