require('telescope').setup{
  defaults = {
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        preview_width = 0.6,
        prompt_position = 'bottom',
      },
      width = 0.8,
      height = 0.4,
    },
  }
}

vim.api.nvim_set_keymap('n', '<C-S-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })
