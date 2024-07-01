-- ~/.config/nvim/lua/my_colors.lua

local colors = {
  fg = "#F8F8F2",
  selection = "#44475A",
  comment = "#6272A4",
  red = "#FF5555",
  orange = "#FFB86C",
  yellow = "#F1FA8C",
  green = "#50FA7B",
  purple = "#BD93F9",
  cyan = "#8BE9FD",
  pink = "#FF79C6",
  bright_red = "#FF6E6E",
  bright_green = "#69FF94",
  bright_yellow = "#FFFFA5",
  bright_blue = "#D6ACFF",
  bright_magenta = "#FF92DF",
  bright_cyan = "#A4FFFF",
  bright_white = "#FFFFFF",
  menu = "#21222C",
  visual = "#3E4452",
  gutter_fg = "#4B5263",
  nontext = "#3B4048",
  white = "#ABB2BF",
  black = "#191A21",
  purple = "#D7AFFF",
  darkPurple = "#5F5FAF",
}

-- Apply colors to highlight groups
vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.black })
vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment })
vim.api.nvim_set_hl(0, "Constant", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "String", { fg = colors.green })
vim.api.nvim_set_hl(0, "Variable", { fg = colors.orange })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Function", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Operator", { fg = colors.pink })
vim.api.nvim_set_hl(0, "Visual", { bg = colors.visual })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.gutter_fg })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.bright_white })
vim.api.nvim_set_hl(0, "NonText", { fg = colors.nontext })
vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = colors.menu })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.comment, bg = colors.menu })
vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = colors.menu })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.menu, bg = colors.bright_blue })

-- win separator vert split 
vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.darkPurple })

vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = colors.purple })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = colors.darkPurple })
vim.api.nvim_set_hl(0, "NvimTreeExecFile", { fg = colors.purple })
vim.api.nvim_set_hl(0, "NvimTreeFileIcon", { fg = colors.purple })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.purple })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.purple })


vim.api.nvim_command("highlight Normal guibg=none ctermbg=none")
vim.api.nvim_command("highlight WinBar guibg=#44475A")
vim.api.nvim_command("highlight NvimTreeVertSplit guibg=None")
vim.api.nvim_command("hi LspInlayHint guifg=#f8f8f2 guibg=#44475A")

