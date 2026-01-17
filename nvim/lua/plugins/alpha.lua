return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = require 'ascii'.art.text.neovim.sharp

      local function footer()
      local total_plugins = #vim.tbl_keys(require 'lazy'.plugins())
      local datetime = os.date(' %Y-%m-%d   %H:%M:%S')
      local version = vim.version()
      local version_info = '   v' .. version.major .. '.' .. version.minor .. '.' .. version.patch
      return datetime .. '  ⚡' .. total_plugins .. ' plugins' .. version_info
    end
    dashboard.section.footer.val = footer()

      dashboard.section.buttons.val = {
				dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "󰈞  Find file", ":Telescope find_files<CR>"),
        dashboard.button("g", "󰊄  Live grep", ":Telescope live_grep<CR>"),
        dashboard.button("o", "  Old files", ":Telescope oldfiles<CR>"),
        dashboard.button("c", "  Config", ":e $MYVIMRC<CR>"),
        dashboard.button("q", "󰅚  Quit", ":qa<CR>"),
      }

      alpha.setup(dashboard.config)
    end,
    dependencies = {
      'MunifTanjim/nui.nvim',
      'MaximilianLloyd/ascii.nvim'
    },
  },
}
