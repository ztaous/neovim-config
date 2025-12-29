-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    -- only real files
    if vim.bo.buftype ~= "" then return end
    local file = vim.api.nvim_buf_get_name(0)
    if file == "" then return end

    -- set cwd to the file's directory
    vim.cmd("cd " .. vim.fn.fnameescape(vim.fs.dirname(file)))

    -- if nvim-tree is loaded, sync it to the file
    local ok, api = pcall(require, "nvim-tree.api")
    if ok then
      vim.schedule(function()
        api.tree.find_file({ open = false, focus = false })
      end)
    end
  end,
})

