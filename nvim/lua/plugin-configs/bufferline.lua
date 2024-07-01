require('bufferline').setup({
  options = {
    indicator = {
      icon = ' ',
      style = 'icon',
    },
    separator_style = { '', '' },
    tab_size = 0,
    buffer_close_icon = '',
    modified_icon = '',
    close_icon = '',
  },
  highlights = {
    fill = {
      bg = '#11131C',
    },
    background = {
      fg = '#6272A4',
      bg = '#11131C',
    },
    buffer_selected = {
      fg = '#f8f8f2',
      bg = '#6272A4',
      bold = true,
    },
    separator = {
      fg = '#11131C',
      bg = '#11131C',
    },
    separator_selected = {
      fg = '#11131C',
      bg = '#6272A4',
    },
    indicator_selected = {
      fg = '#6272A4',
      bg = '#6272A4',
    },
    tab = {
      fg = '#6272A4',
      bg = '#11131C',
    },
    tab_selected = {
      fg = '#f8f8f2',
      bg = '#6272A4',
      bold = true,
    },
  },
})

vim.api.nvim_set_hl(0, 'BufferLineFill', { bg = '#11131C' })
vim.api.nvim_set_hl(0, 'BufferLineBackground', { fg = '#6272A4', bg = '#11131C' })
vim.api.nvim_set_hl(0, 'BufferLineBufferSelected', { fg = '#f8f8f2', bg = '#6272A4', bold = true })
vim.api.nvim_set_hl(0, 'BufferLineSeparator', { fg = '#11131C', bg = '#11131C' })
vim.api.nvim_set_hl(0, 'BufferLineSeparatorSelected', { fg = '#11131C', bg = '#6272A4' })
vim.api.nvim_set_hl(0, 'BufferLineIndicatorSelected', { fg = '#6272A4', bg = '#6272A4' })
vim.api.nvim_set_hl(0, 'BufferLineTab', { fg = '#6272A4', bg = '#11131C' })
vim.api.nvim_set_hl(0, 'BufferLineTabSelected', { fg = '#f8f8f2', bg = '#6272A4', bold = true })
