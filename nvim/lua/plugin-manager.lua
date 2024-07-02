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

  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require('plugin-configs.autopairs')
    end
  }

  use 'vijaymarupudi/nvim-fzf'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
    "kelly-lin/telescope-ag",
    requires = { "nvim-telescope/telescope.nvim" },
  })

  use 'wakatime/vim-wakatime'

  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-completion'
  use 'kristijanhusak/vim-dadbod-ui'


end)
