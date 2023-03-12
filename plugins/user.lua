return {
  -- add LSP plugin
  {
    "simrat39/rust-tools.nvim",
    event = "User AstroLspSetup",
    opts = function() return { server = require("astronvim.utils.lsp").config "rust_analyzer" } end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "rust_analyzer" },
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      vim.o.background = "dark"
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
}
