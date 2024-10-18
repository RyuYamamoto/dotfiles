local fn = vim.fn

require("packer").startup(function(use)
	-- colorscheme
	use({"tomasr/molokai"})
  use({"patstockwell/vim-monokai-tasty"})
  use({"ErichDonGubler/vim-sublime-monokai"})
	use({"w0ng/vim-hybrid"})
	use({"Mofiqul/vscode.nvim"})
  use({"vscode-neovim/vscode-neovim"})
  use({"akinsho/bufferline.nvim"})
  use({"nvim-lualine/lualine.nvim"})
  use({"navarasu/onedark.nvim"})
  use({"talha-akram/noctis.nvim"})
  use({"sainnhe/gruvbox-material"})
  use({"bfrg/vim-cpp-modern"})
  use({"shaunsingh/solarized.nvim"})
  use({"shaunsingh/nord.nvim"})
  use({"altercation/vim-colors-solarized"})
  use({"svrana/neosolarized.nvim"})
  use({"tjdevries/colorbuddy.nvim"})
  use({"lifepillar/vim-solarized8"})
  use({"craftzdog/solarized-osaka.nvim"})

  use({"octol/vim-cpp-enhanced-highlight", ft = { 'c', 'cpp' }})

	use({"vim-airline/vim-airline"})
	use({"vim-airline/vim-airline-themes"})

  use {
    requires = { "nvim-treesitter/nvim-treesitter" },
    "Badhi/nvim-treesitter-cpp-tools",
    'nvim-treesitter/nvim-treesitter-textobjects'
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use('rhysd/vim-clang-format')

  use('lukas-reineke/indent-blankline.nvim')

  use({"scrooloose/nerdtree"})
  use({"ryanoasis/vim-devicons"})

  use({"neoclide/coc.nvim", branch = "release"})

  -- telescope
  use({"nvim-lua/plenary.nvim"})
  use({"nvim-treesitter/nvim-treesitter"})
  use({"nvim-telescope/telescope.nvim"})
  use({"nvim-telescope/telescope-frecency.nvim"})
  use({"nvim-telescope/telescope-fzf-native.nvim", run = 'make'})

	use({"akinsho/toggleterm.nvim"})
end)

-- plugin config
require("plugins.config.coc")
require("plugins.config.toggleterm")
require("plugins.config.telescope")
require("plugins.config.nvim-tree")
require("plugins.config.indent-blackline")
