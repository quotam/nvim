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
    vue = { "prettierd" },
  },

  format_on_save = {
    timeout_ms = 1000,
    quiet = true,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
