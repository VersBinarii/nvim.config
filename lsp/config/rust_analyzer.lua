return {
  settings = {
    rust_analyzer = {
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
