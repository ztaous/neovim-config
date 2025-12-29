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

local has_tree = pcall(require, "nvim-tree")

dashboard.section.buttons.val = vim.tbl_filter(function(x) return x ~= nil end, {
  dashboard.button("n", "New file", ":enew<CR>"),
  dashboard.button("f", "Find file", ":Telescope find_files<CR>"),
  dashboard.button("g", "Grep", ":Telescope live_grep<CR>"),
  dashboard.button("r", "Recent", ":Telescope oldfiles<CR>"),
  has_tree and dashboard.button("t", "File tree", ":NvimTreeToggle<CR>") or nil,
  dashboard.button("q", "Quit", ":qa<CR>"),
})

alpha.setup(dashboard.opts)
