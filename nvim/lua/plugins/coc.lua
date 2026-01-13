return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    event = "InsertEnter",
    config = function()
      vim.cmd("source " .. vim.fn.expand("~/.config/nvim/lua/plugins/coc.vim"))
    end,
  },
}
