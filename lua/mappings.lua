require "nvchad.mappings"

local map = vim.keymap.set

map({ "n" }, "<leader>rr", "<cmd>:Rest run<CR>", { desc = "rest run current" })

map("t", "<leader>jj", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

map({ "n" }, "ca", vim.lsp.buf.code_action, { desc = "code actions" })

map({ "n", "t", "i" }, "<C-]>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm", size = 0.5 }
end, { desc = "toggle vertical terminal" })

map({ "n", "t", "i" }, "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm", size = 0.3 }
end, { desc = "toggle horizontal terminal" })

map({ "n", "t", "i" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "ftoggleTerm" }
end, { desc = "toggle floating terminal" })

vim.keymap.set("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })

map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "toggle transparent" })

map("n", "<S-K>", vim.lsp.buf.hover, { desc = "Show signature help" })

map("n", "<C-q>", function()
  vim.t.bufs = vim.tbl_filter(function(bufnr)
    return vim.api.nvim_buf_get_option(bufnr, "modified")
  end, vim.t.bufs)
end, { desc = "Close all unsaved buffers" })

map("n", "<leader>ii", "<cmd>:OrganizeImports<CR>", { desc = "Organize Imports" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>ft", "<cmd>:TodoTelescope<CR>", { desc = "Find TODO" })
-- map({ "n", "i" }, "<C-n>", "<cmd>:tabnew<CR>", { desc = "new tab" })
-- map({ "n", "i" }, "<C-1>", "<cmd>: tabn 1 <CR>", { desc = "tab 1" })
-- map({ "n", "i" }, "<C-2>", "<cmd>: tabn 2 <CR>", { desc = "tab 2" })
-- map({ "n", "i" }, "<C-3>", "<cmd>: tabn 3 <CR>", { desc = "tab 3" })
-- map({ "n", "i" }, "<C-4>", "<cmd>: tabn 4 <CR>", { desc = "tab 4" })
-- map({ "n", "i" }, "<C-5>", "<cmd>: tabn 5 <CR>", { desc = "tab 5" })
-- map({ "n", "i" }, "<C-6>", "<cmd>: tabn 6 <CR>", { desc = "tab 6" })
-- map({ "n", "i" }, "<C-7>", "<cmd>: tabn 7 <CR>", { desc = "tab 7" })
-- map({ "n", "i" }, "<C-8>", "<cmd>: tabn 8 <CR>", { desc = "tab 8" })
-- map({ "i", "n" }, "<C-9>", "<cmd>: tabn 9 <CR>", { desc = "tab 9" })
-- map({ "n" }, "<leader>q", "<cmd>:close<CR>", { desc = "close tab" })
-- map({ "i", "n" }, "<C-0>", "<cmd>:tablast<CR>", { desc = "last tab" })
map({ "n" }, "<leader>gg", "<cmd>:LazyGit<CR>", { desc = "open lazygit" })
map({ "n" }, "\\", "<cmd>:vsplit <CR>", { desc = "vertical split" })
