-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "dark_horizon",
  theme_toggle = { "dark_horizon", "dark_horizon" },
  transparency = false,
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

  telescope = { style = "borderless" }, -- borderless / bordered
}

return M
