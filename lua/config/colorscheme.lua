local M = {}

local path = vim.fn.stdpath("state") .. "/colorscheme.txt"
local default = ""

function M.apply(name)
  if name and name ~= "" then
    local ok = pcall(vim.cmd.colorscheme, name)
    if ok then return true end
  end
  return pcall(vim.cmd.colorscheme, default)
end

function M.load()
  local f = io.open(path, "r")
  local name = f and f:read("*l") or nil
  if f then f:close() end
  M.apply(name)
end

function M.save()
  local name = vim.g.colors_name
  if not name or name == "" then return end
  local f = io.open(path, "w")
  if not f then return end
  f:write(name)
  f:close()
end

return M
