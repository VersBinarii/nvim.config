local rt = require("rust-tools")
return function(client, bufnr)
  if client.name == "rust_analyzer" then
    vim.keymap.set("n", "<leader>a", rt.hover_actions.hover_actions, { buffer = bufnr })
  end
end
