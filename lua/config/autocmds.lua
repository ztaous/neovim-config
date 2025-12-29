-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    -- only if nvim-tree is loaded and the buffer is a real file
    if vim.bo.buftype ~= "" then return end
    if not package.loaded["nvim-tree.api"] then return end
    require("nvim-tree.api").tree.find_file({ open = false, focus = false })
  end,
})
