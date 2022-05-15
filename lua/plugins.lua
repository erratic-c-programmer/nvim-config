return require('packer').startup(function()
  use "EdenEast/nightfox.nvim"
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
