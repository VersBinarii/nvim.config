return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.source_selector = {
      winbar = true,
      statusline = false,
      sources = {
        { source = "filesystem" },
      }
    }
  end
}
