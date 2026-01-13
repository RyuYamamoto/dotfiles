return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",

      { "nvim-tree/nvim-web-devicons", lazy = true },

      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
    opts = {
      defaults = {
        file_ignore_patterns = {
          "^%.git/",
          "^install/",
          "^build/",
          "^log/",
        },

        sorting_strategy = "ascending",
        layout_config = {
          prompt_position = "top",
        },
      },

      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)

      pcall(telescope.load_extension, "fzf")
    end,
  },
}
