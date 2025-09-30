local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- 1. Define the configuration
vim.lsp.config("ts_ls", {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})
-- Create a custom user command for organizing imports
vim.api.nvim_create_user_command("OrganizeImports", function()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)
end, { desc = "Organize TypeScript imports" })

-- YAML
vim.lsp.config("yamlls", {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})

-- Prisma
vim.lsp.config("prismals", {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})

-- TailwindCSS
vim.lsp.config("tailwindcss", {
  on_attach = on_attach, -- Consider adding on_attach and capabilities for consistency
  capabilities = capabilities,
  performance = {
    trigger_debounce_time = 500,
    throttle = 550,
    fetching_timeout = 80,
  },
})

-- Python
vim.lsp.config("pyright", {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})

-- Svelte
vim.lsp.config("svelte", {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})

-- JSON
vim.lsp.config("jsonls", {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})

-- Emmet
vim.lsp.config("emmet_ls", {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "astro",
    "css",
    "eruby",
    "html",
    "javascript",
    "javascriptreact",
    "less",
    "sass",
    "scss",
    "svelte",
    "php",
    "pug",
    "typescriptreact",
    "vue",
  },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
})

local servers =
  { "html", "cssls", "ts_ls", "emmet_ls", "jsonls", "svelte", "pyright", "tailwindcss", "yamlls", "prismals" }
vim.lsp.enable(servers)
