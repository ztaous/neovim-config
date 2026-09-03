local M = {}

local markers = {
  ".git",
  "package.json",
  "pyproject.toml",
  "go.mod",
  "Cargo.toml",
  "CMakeLists.txt",
}

local function nvim_tree_root()
  local ok, core = pcall(require, "nvim-tree.core")
  if not ok then
    return nil
  end

  return core.get_cwd()
end

function M.get(bufnr)
  local tree_root = nvim_tree_root()
  if tree_root then
    return tree_root
  end

  bufnr = bufnr or 0
  local name = vim.api.nvim_buf_get_name(bufnr)
  if name == "" then
    return vim.fn.getcwd(0, 0)
  end
  local dir = vim.fs.dirname(name)
  return vim.fs.root(dir, markers) or dir
end

return M
