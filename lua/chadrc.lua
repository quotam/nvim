-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "tokyonight" },
  transparency = true,

  tabufline = {
    --  more opts
    order = { "treeOffset", "buffers" },
  },

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
