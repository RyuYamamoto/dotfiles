return {
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      vim.opt.background = "dark"
      require("onedark").setup({
        style = "dark",
      })
      require("onedark").load()
    end,
  },
}

