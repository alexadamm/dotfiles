-- buffer management
vim.api.nvim_set_keymap('n', 'Q', ':bd<CR>', { noremap = true, silent=true })
vim.api.nvim_set_keymap('n', 'K', ':bp<CR>', { noremap = true, silent=true })
vim.api.nvim_set_keymap('n', 'J', ':bn<CR>', { noremap = true, silent=true })
