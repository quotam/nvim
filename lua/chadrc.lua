-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "tokyodark",
  theme_toggle = { "tokyonight", "tokyodark" },
  transparency = true,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  statusline = {
    theme = "vscode",
  },

  cmp = {
    icons = true,
    lspkind_text = true,
  },

  telescope = { style = "bordered" }, -- borderless / bordered
}

return M
