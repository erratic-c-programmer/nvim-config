return require('packer').startup(function()
  use "wbthomason/packer.nvim"
  use "sainnhe/everforest"
  use "EdenEast/nightfox.nvim"
  use "LionC/nest.nvim"
  use "tpope/vim-obsession"
  use "voldikss/vim-floaterm"
  use { "nvim-treesitter/nvim-treesitter", run=":TSUpdate" }
  use { "ms-jpq/coq_nvim", branch="coq" }
  use "neovim/nvim-lspconfig"
end)
