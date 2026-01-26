return {
  {
    "neovim/nvim-lspconfig",
    enabled = false,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.clangd.setup({
        cmd = { "clangd", "--background-index", "--clang-tidy" },
      })

      -- lspconfig.pyright.setup({})
      -- lspconfig.rust_analyzer.setup({})
    end,
  },
}

