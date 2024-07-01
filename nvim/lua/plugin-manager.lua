return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-tree.lua'

  use 'zbirenbaum/copilot.lua'

  use 'nvim-tree/nvim-web-devicons'

  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
      opt = true
    }
  }

  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'

  use 'nvim-treesitter/nvim-treesitter'

  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }

end)
