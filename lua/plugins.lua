return require('packer').startup(function()
  use "EdenEast/nightfox.nvim"
  use {
    "feline-nvim/feline.nvim",
    requires={ "kyazdani42/nvim-web-devicons" },
    config=function() require('feline').setup() end
  }
  use {
    "lewis6991/gitsigns.nvim"
    config = function()
      require('gitsigns').setup()
    end
  }
  use "LionC/nest.nvim"
  use { "ms-jpq/coq_nvim", branch="coq" }
  use "neovim/nvim-lspconfig"
  use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
  use "sainnhe/everforest"
  use "tpope/vim-eunuch"
  use "tpope/vim-obsession"
  use "voldikss/vim-floaterm"
  use "wbthomason/packer.nvim"
end)
