return {
  {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "medium",
        italics = true,
        disable_italic_comments = false,
      })
    end,
  },
  { "LazyVim/LazyVim", opts = {
    colorscheme = "everforest",
  } },
}
