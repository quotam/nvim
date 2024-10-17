local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    markdown = { "prettierd" },
    json = { "prettierd" },
    yaml = { "prettierd" },
    http = { "prettierd" },
    python = { "black", "isort" },
    html = { "prettierd" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    svelte = { "prettierd" },
    vue = { "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    quiet = true,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
