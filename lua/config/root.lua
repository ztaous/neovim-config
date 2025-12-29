local M = {}

local markers = { ".git", "package.json", "pyproject.toml", "go.mod", "Cargo.toml", "CMakeLists.txt" }

function M.get(bufnr)
  bufnr = bufnr or 0
  local name = vim.api.nvim_buf_get_name(bufnr)
  if name == "" then
    return vim.fn.getcwd()
  end
  local dir = vim.fs.dirname(name)
  return vim.fs.root(dir, markers) or dir
end

function M.set_cwd(bufnr)
  local root = M.get(bufnr)
  if root and root ~= "" then
    vim.cmd("cd " .. vim.fn.fnameescape(root))
  end
end

return M
