-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.term = {
  float = {
    height = 0.9,
    width = 0.8,
    col = 0.1,
    row = 0,
  },
}

M.base46 = {
  transparency = true,
  transparent_background = true,
}

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "tokyonight" },
  transparency = true,

  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
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
