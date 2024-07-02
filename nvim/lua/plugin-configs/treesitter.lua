-- ~/.config/nvim/lua/plugin-configs/treesitter.lua

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c", "lua", "vim", "vimdoc", "python", "typescript", "javascript",
    "rust", "go", "gosum", "gomod", "proto", "sql", "query", "php",
    "java", "yaml", "cpp", "markdown", "latex"
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
  },
  indent = { 
    enable = true,
  },
  autotag = { -- Auto close and auto rename tags which are defined in the grammar
    enable = true,
  },
  context_commentstring = { -- Set the commentstring for a file based on the filetype
    enable = true,
  },
  textobjects = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
  },
}

local rainbow_delimiters = require("rainbow-delimiters")

vim.g.rainbow_delimiters = {
	strategy = {
		[""] = rainbow_delimiters.strategy["global"],
		vim = rainbow_delimiters.strategy["local"],
	},
	query = {
		[""] = "rainbow-delimiters",
		lua = "rainbow-blocks",
	},
	highlight = {
		"RainbowRed",
		"RainbowYellow",
		"RainbowBlue",
		"RainbowGreen",
		"RainbowViolet",
		"RainbowCyan",
	},
}
