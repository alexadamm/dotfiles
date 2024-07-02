local fzf = require("fzf")

vim.g.fzf_layout = { down = '~40%' }
-- fzf
vim.api.nvim_set_keymap('n', '<C-p>', ':FZF<CR>', { noremap = true, silent = true })
