-- mason.nvim is a Neovim plugin that allows you to easily manage external editor tooling such as LSP servers, DAP servers, linters, and formatters through a single interface. It runs everywhere Neovim runs (across Linux, macOS, Windows, etc.), with only a small set of external requirements needed.

return {
  "williamboman/mason-lspconfig.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    ensure_installed = require("settings").servers,
    automatic_installation = true,
  },
  dependencies = {
    "williamboman/mason.nvim",
    event = { "BufReadPre", "BufNewFile" },
    build = ":MasonUpdate",
    keys = {
      { "<leader>lI", "<cmd>Mason<CR>", desc = "Opens Mason" },
    },
    cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonUpdate", "MasonLog" },
    opts = {
      ui = {
        border = "rounded",
        height = 0.8,
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
      log_level = vim.log.levels.INFO,
      max_concurrent_installers = 4,
    },
  },
}
