-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})

-- Persist colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    require("config.colorscheme").save()
  end,
})

-- Keep cwd at project root
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    if vim.bo.buftype ~= "" then return end
    local file = vim.api.nvim_buf_get_name(0)
    if file == "" then return end

    local root = require("config.root").get(0)
    if root and root ~= "" and vim.fn.getcwd() ~= root then
      vim.cmd("cd " .. vim.fn.fnameescape(root))
    end
  end,
})

