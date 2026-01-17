return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      vim.opt.background = "dark"

      require("onedarkpro").setup({
        theme = "onedark", -- onedark / onelight / onedark_vivid / onedark_dark
        styles = {
          comments = "italic",
          keywords = "bold",
          functions = "NONE",
          strings = "NONE",
          variables = "NONE",
        },
        options = {
          transparency = false,
          terminal_colors = true,
        },
      })

      vim.cmd.colorscheme("onedark")
    end,
  },
}
