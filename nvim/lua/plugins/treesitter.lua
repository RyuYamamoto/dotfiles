-- lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = {
          "c",
          "cpp",
          "csv",
          "dockerfile",
          "gitcommit",
          "gitignore",
          "html",
          "json",
          "lua",
          "markdown",
          "python",
          "vim",
          "xml",
          "yaml",
        },
        highlight = { enable = true },
        indent = { enable = true, disable = { "python", "cpp" } },
      })
    end,
  },
}
