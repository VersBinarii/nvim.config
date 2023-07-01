return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.rust",                   enabled = true },
  {
    "rust-tools.nvim",
    opts = {
      tools = {
        reload_workspace_from_cargo_toml = true,
        inlay_hints = {
          show_parameter_hints = true,
          auto = true,
          only_current_line = false,
          highlight = "Comment",
        },
      }
    }
  },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  {
    "monokai-pro.nvim",
    opts = {
      filter = "machine",
      background_clear = {
        "telescope", "float_win", "neo-tree"
      },
      styles = {
        storageclass = { italic = false },
        keyword = { italic = false },
        structure = { italic = false },
        parameter = { italic = false },
      }
    }
  },
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
