require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Spell check
vim.opt.spelllang = { "ru", "en_us" }
vim.opt.spell = true
-- relativenumber
--
vim.opt.relativenumber = true
--
-- vim.api.nvim_create_autocmd({ "BufAdd", "BufEnter", "tabnew" }, {
--   callback = function()
--     vim.t.bufs = vim.tbl_filter(function(bufnr)
--       return vim.api.nvim_buf_get_option(bufnr, "modified")
--     end, vim.t.bufs)
--   end,
-- })
