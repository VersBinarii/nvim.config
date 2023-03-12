return {
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        command = "clippy",
      },
      procMacro = {
        enable = true,
      },
      inlayHints = {
        locationLinks = false,
      },
    },
  },
}
