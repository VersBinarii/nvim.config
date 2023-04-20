return {
  -- add LSP plugin
  {
    "simrat39/rust-tools.nvim",
    event = "User AstroLspSetup",
    opts = function()
      return {
        server = require("astronvim.utils.lsp").config "rust_analyzer"
      }
    end
  },
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {
      null_ls = {
        enabled = true,
        name = "crates.nvim",
      },
    },
    tag = 'v0.3.0',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crates').setup()
      require("cmp").setup.buffer { sources = { { name = "crates" } } }
      require "crates"
    end,
    -- init = function()
    --   vim.api.nvim_create_autocmd("BufRead", {
    --     group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
    --     pattern = "Cargo.toml",
    --     callback = function()
    --       require("cmp").setup.buffer { sources = { { name = "crates" } } }
    --       require "crates"
    --     end,
    --   })
    -- end,
  },
}
