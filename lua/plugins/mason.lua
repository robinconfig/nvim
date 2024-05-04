return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "clangd",
      "gopls",
      "rust-analyzer",
    },
  },
}
