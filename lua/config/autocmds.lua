local group = vim.api.nvim_create_augroup("user_autocmds", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = group,
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  group = group,
  callback = function(args)
    if vim.bo[args.buf].buftype ~= "" then return end
    local file = vim.api.nvim_buf_get_name(args.buf)
    if file == "" then return end

    local root = require("config.root").get(args.buf)
    if not root or root == "" then return end

    local cwd = vim.fn.getcwd(0, 0)
    if cwd ~= root then
      vim.cmd("tcd " .. vim.fn.fnameescape(root))
    end
  end,
})
