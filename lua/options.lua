require "nvchad.options"

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
-- tabufline remove bg
vim.api.nvim_set_hl(0, "TabLine", { bg = "none", fg = "#c0caf5" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none", fg = "#bb9af7", bold = true })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })

-- Spell check
--
vim.opt.spelllang = { "ru", "en_us" }
vim.opt.spell = true

-- relativenumber
--
vim.opt.foldmethod = "manual"
vim.opt.relativenumber = true

--
-- vim.api.nvim_create_autocmd({ "BufAdd", "BufEnter", "tabnew" }, {
--   callback = function()
--     vim.t.bufs = vim.tbl_filter(function(bufnr)
--       return vim.api.nvim_buf_get_option(bufnr, "modified")
--     end, vim.t.bufs)
--   end,
-- })
