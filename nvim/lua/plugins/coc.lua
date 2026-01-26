return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    enabled = false,
    event = "InsertEnter",
    config = function()
      vim.cmd("source " .. vim.fn.expand("~/.config/nvim/lua/plugins/coc.vim"))
    end,
  },
}
